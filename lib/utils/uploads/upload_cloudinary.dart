import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

Future<String?> uploadImageToCloudinary(File imageFile) async {
  final cloudName = "daplqijwv";
  final uploadPreset = "e_commerce_unsigned_uploads";

  final url = Uri.parse("https://api.cloudinary.com/v1_1/$cloudName/image/upload");

  final request = http.MultipartRequest("POST", url)
    ..fields['upload_preset'] = uploadPreset
    ..files.add(await http.MultipartFile.fromPath('file', imageFile.path));

  final response = await request.send();

  if (response.statusCode == 200) {
    final resStr = await response.stream.bytesToString();
    final data = json.decode(resStr);
    final imageUrl = data['secure_url'];
    final publicId = data['public_id']; // store this too!

    await FirebaseFirestore.instance.collection("images").add({
      "url": imageUrl,
      "public_id": publicId,
      "uploadedAt": DateTime.now(),
    });

    return imageUrl;
  } else {
    final resStr = await response.stream.bytesToString();
    print("Upload failed: ${response.statusCode}, body: $resStr");
    return null;
  }
}
