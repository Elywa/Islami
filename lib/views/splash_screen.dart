import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami/views/home_view.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key});

  @override
  Widget build(BuildContext context) {
    // Delay for 3 seconds before navigating to the next screen
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) =>  HomeView()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_light.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
