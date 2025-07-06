import 'package:flutter/material.dart';
import 'package:women_safety_app/presentation/Dashboard/home.dart';
import 'package:women_safety_app/servicelocator.dart';

import 'presentation/Auth/Signin/Signin.dart';
import 'presentation/widget/bottom_nav.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/signin',
      routes: {
        '/signin':(context) => const Signin(),
        '/home':(context) => const Home(),
        '/bottomnav':(context) => const BottomNavigation(),
      },
    );
  }
}
