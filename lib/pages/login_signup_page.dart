// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';

class LoginSignupPage extends StatelessWidget {
  final appBar = AppBar();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height -
        mediaQuery.padding.top -
        appBar.preferredSize.height;
    final screenWidth = mediaQuery.size.width;
    return new Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              "https://th.bing.com/th/id/R.807a79456d989c396f7827aa080c93ac?rik=1c4wctMEzUrrvA&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f8%2fe%2fa%2f1294618-widescreen-falling-rain-wallpapers-1920x1080-desktop.jpg&ehk=1zyDPjhnBFOR24iSTfVGB0Y5H2RD9ZNXpPbSqfGTky4%3d&risl=&pid=ImgRaw&r=0",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.6,
                  borderRadius: 20,
                  blur: 5,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.1),
                        const Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.5),
                      const Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
