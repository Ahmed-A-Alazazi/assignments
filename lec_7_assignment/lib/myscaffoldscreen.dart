import 'package:flutter/material.dart';

class MyScaffoldScreen extends StatelessWidget {
  const MyScaffoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text(
            'My Scaffold',
            style: TextStyle(color: Colors.black)
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'الصفحة الرئيسية',
          style: TextStyle(
              fontSize: 18,
              color: Colors.black87
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFE6E6FA), // Light purple color
        elevation: 1,
        child: const Icon(Icons.add, color: Colors.black87),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Sets "الرئيسية" as active
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات',
          ),
        ],
      ),
    );
  }
}