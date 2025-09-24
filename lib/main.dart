import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/app.dart';
import 'package:t_store/firebase_options.dart';

import 'data/repositories/authentication/authentication_repository.dart';
import 'data/repositories/user/user_repository.dart';

Future<void> main() async {

  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();


  await GetStorage.init();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //initialize firebase
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform,)
  .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

   Get.put(UserRepository());
  // initialize authentication


  runApp(const App());


}

