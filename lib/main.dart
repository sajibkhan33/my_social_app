import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_series/firebase_options.dart';
import 'package:firebase_series/log_in.dart';
import 'package:flutter/material.dart';
import 'log_in.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try{
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform );
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:LoginPage(),
    );
  }
}


