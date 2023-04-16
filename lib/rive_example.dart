import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MaterialApp(
  home: MyRiveAnimation(),
));

class MyRiveAnimation extends StatelessWidget {
  const MyRiveAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.network(
          'assets/universe.riv',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}