import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gpi/util/color.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      child: Image.asset(
        'assets/icon.png',
        scale: 8,
      ),
      builder: (context, child) {
        return Center(
          child: Transform.rotate(
            angle: _controller!.value * 4.0 * pi,
            child: child,
          ),
        );
      },
    );
  }
}
