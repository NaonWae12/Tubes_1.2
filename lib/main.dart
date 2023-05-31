import 'package:flutter/material.dart';
// import 'package:unit3c_3/Screen/Mentor/AddClass.dart';
// import 'Screen/Home/Participant/homeV2.dart';
// import 'Screen/Mentor/MNavigator.dart';
// import 'Screen/Mentor/MyClass.dart';
import 'Screen/Participant/SplashScreen.dart';
import 'Screen/Login/LoginAndri.dart';
// import 'Screen/Participant/PageProgres.dart';

import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit 3C',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => LoginPage(),
      },
    );
  }
}
