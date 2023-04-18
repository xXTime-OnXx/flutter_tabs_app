import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../components/animated_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation("active", autoplay: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              // height: 100,
              width: MediaQuery.of(context).size.width * 1.7,
              bottom: 200,
              left: 100,
              child: Image.asset("backgrounds/Spline.png")),
          Positioned.fill(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: const SizedBox())),
          const RiveAnimation.asset("animations/shapes.riv"),
          Positioned.fill(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: const SizedBox())),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                SizedBox(
                  width: 260,
                  child: Column(
                    children: const [
                      Text("Learn design & code",
                          style: TextStyle(
                              fontSize: 60,
                              fontFamily: "Poppins",
                              height: 1.2)),
                      SizedBox(height: 16),
                      Text(
                          "Don't skip design. Learn design and code by building real apps with Flutter and Swift. Complete courses about the best tools.")
                    ],
                  ),
                ),
                const Spacer(flex: 2),
                AnimatedButton(
                    btnAnimationController: _btnAnimationController,
                    press: () {
                      _btnAnimationController.isActive = true;
                    }),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text("Purchase includes access to 30+ courses 240+ premium tutorials, 120+ hours of videos, source files and certificates."),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

// onPressed: () {
// Navigator.pushReplacementNamed(context, '/home');
// },
