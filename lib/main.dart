import 'package:flutter/material.dart';
import 'package:waterqualityfinal/Screens/Welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBSNEgNPdufR5cDMvP5CRPDIPyCLkXANOA",
        appId: "1:489969303128:android:6c147241ab1499d9fb542d",
        messagingSenderId: '489969303128',
        projectId: "purehydro-95b6e"


    ),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),

  ));
}