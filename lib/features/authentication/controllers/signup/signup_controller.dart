import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/data/repositories/user/user_repository.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';
import '../../models/user/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // form controllers
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // default Cloudinary profile picture
  static const String defaultProfileUrl =
      "https://res.cloudinary.com/daplqijwv/image/upload/v1720000000/default_profile.png";

  // signup
  void signup() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        BImages.docerAnimation,
      );

      // check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // form validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must accept the Privacy & Terms of use.',
        );
        TFullScreenLoader.stopLoading();
        return;
      }

      // register user in Firebase Auth
      final userCredential =
          await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // assign default profile image (no gallery popup)
      final imageUrl = defaultProfileUrl;
      final publicId = '';

      // save user model
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: imageUrl,
        profileImageId: publicId,
      );

      await UserRepository.instance.saveUserRecord(newUser);

      TFullScreenLoader.stopLoading();

      // success message
      TLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify your email to continue.',
      );

      // navigate to verify email screen
      Get.to(() =>  VerifyEmail(email: email.text.trim(),));
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(
        title: 'Oh snap!',
        message: e.toString(),
      );
    }
  }
}
