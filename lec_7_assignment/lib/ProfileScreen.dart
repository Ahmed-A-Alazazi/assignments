import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light grey background
      body: Center(
        child: Container(
          width: 200,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.blueAccent
              ),
              SizedBox(height: 16),
              Text(
                'اسم الطالب',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 8),
              Text(
                'مطور فلاتر',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}