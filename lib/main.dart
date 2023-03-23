import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/OnBoardingScreens/OnBoardingScreen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'Eccomerce App',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: OnBoardingScreen(),
    );
  }
}
