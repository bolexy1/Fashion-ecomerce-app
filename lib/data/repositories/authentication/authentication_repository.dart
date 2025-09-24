import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onBoarding/onBoardingScreen.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:t_store/utils/exceptions/firebase_exceptions.dart';
import 'package:t_store/utils/exceptions/format_exceptions.dart';
import 'package:t_store/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // called from main.dart on app launch

  @override 
  void onReady(){
    // remove splash screen
    FlutterNativeSplash.remove();
    // redirect to the appropriate screen
    screenRedirect();
  }



  screenRedirect() async {
    User? user = _auth.currentUser;
    if(user != null){
      if(user.emailVerified){
        Get.offAll(()=> const NavigationMenu());
      }else{
        Get.offAll(()=> VerifyEmail(email: _auth.currentUser?.email,));
      }
    }else{
      // local storage

    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true 
    ? Get.offAll(() => const LoginScreen()) 
    : Get.offAll(const Onboardingscreen());


    }
    
  }


  // email authentication-signing

  // email authentication- register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseAuthException catch (e) {
      throw TFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const TFormatException();
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    }catch (e) {
      throw 'Something went wrong. please try again';
    }
  }

  // [EmailVerification] - mail verification
  Future<void>sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseAuthException catch (e) {
      throw TFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const TFormatException();
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    }catch (e) {
      throw 'Something went wrong. please try again';
    }

  }



   Future<void>logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseAuthException catch (e) {
      throw TFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const TFormatException();
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    }catch (e) {
      throw 'Something went wrong. please try again';
    }
  }
}

