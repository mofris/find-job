import 'package:flutter/material.dart';
import 'package:job/pages/splash_page.dart';
import 'package:job/pages/onboarding_page.dart';
import 'package:job/pages/sign_in_page.dart';
import 'package:job/pages/sign_up_page.dart';
import 'package:job/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
