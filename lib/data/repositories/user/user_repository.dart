import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:t_store/features/authentication/models/user/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// Upload image to Cloudinary and return URL + publicId
  Future<Map<String, String>?> uploadImageToCloudinary(File imageFile) async {
    final cloudName = "daplqijwv";
    final uploadPreset = "e_commerce_unsigned_uploads";

    final url = Uri.parse("https://api.cloudinary.com/v1_1/$cloudName/image/upload");

    final request = http.MultipartRequest("POST", url)
      ..fields['upload_preset'] = uploadPreset
      ..files.add(await http.MultipartFile.fromPath('file', imageFile.path));

    try {
      final response = await request.send();
      final resStr = await response.stream.bytesToString();

      print("📤 Cloudinary response: $resStr"); // debug log

      if (response.statusCode == 200) {
        try {
          final data = json.decode(resStr);
          return {
            "url": data['secure_url'] ?? '',
            "public_id": data['public_id'] ?? '',
          };
        } catch (e) {
          print("❌ JSON decode failed: $resStr");
          return null;
        }
      } else {
        print("❌ Upload failed: ${response.statusCode}, body: $resStr");
        return null;
      }
    } catch (e) {
      print("❌ Cloudinary request error: $e");
      return null;
    }
  }

  /// Save user info in Firestore (with optional Cloudinary image)
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Something went wrong while saving user: $e';
    }
  }
}

// firebase

// email authentication- register
// // Future<void> saveUserRecord(UserModel user) async{ 
//// try { 
///// return await _db.collection('Users').doc(user.id).set(user.toJson()); 
///// }on FirebaseAuthException catch (e){ 
///// throw TFirebaseAuthException(e.code).message; 
///// } on FirebaseAuthException catch (e) { 
///// throw TFirebaseException(e.code).message; 
///// }on FormatException catch (_){ 
///// throw const TFormatException(); 
///// }on PlatformException catch (e) { 
///// throw TPlatformException(e.code).message; 
///// }catch (e) { // throw 'Something went wrong. please try again'; 
///// } // }