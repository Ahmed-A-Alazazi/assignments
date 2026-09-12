import 'package:flutter/material.dart';

// --- Import Group 1 Screens ---
import 'profilescreen.dart';
import 'myscaffoldscreen.dart';
import 'dashboardscreen.dart';

// --- Import Group 2 Screens ---
import 'productsscreen.dart';
import 'inventoryscreen.dart';
import 'stackdemoscreen.dart';

// --- Import Group 3 Screens ---
import 'loginscreen.dart';
import 'counterscreen.dart';

// --- Import Group 4 Screen (New) ---
import 'alertsscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مشروع التكليف',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      // This builder forces the entire app to be Right-to-Left.
      // It makes the PageView swipe direction natural for Arabic.
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const MainPager(),
    );
  }
}

class MainPager extends StatelessWidget {
  const MainPager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PageView allows you to swipe horizontally between all 9 screens
      body: PageView(
        children: const [
          ProfileScreen(),     // Page 1
          MyScaffoldScreen(),  // Page 2
          DashboardScreen(),   // Page 3
          ProductsScreen(),    // Page 4
          InventoryScreen(),   // Page 5
          StackDemoScreen(),   // Page 6
          LoginScreen(),       // Page 7
          CounterScreen(),     // Page 8
          AlertsScreen(),      // Page 9 (New)
        ],
      ),
    );
  }
}