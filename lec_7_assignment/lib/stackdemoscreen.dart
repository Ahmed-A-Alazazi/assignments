import 'package:flutter/material.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[50], // Very light background
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0,
          title: const Text(
            'تداخل العناصر (Stack)',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // The bottom layer: Blue rounded rectangle
              Container(
                width: 240,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.blue, // Primary blue color
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              // The top layer: White circular play button
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.blue, // Icon matches the background box
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}