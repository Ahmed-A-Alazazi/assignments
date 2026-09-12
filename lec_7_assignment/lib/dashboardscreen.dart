import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Directionality enforces Right-to-Left layout for Arabic text
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'لوحة التحكم',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.95, // Slightly adjust for visual proportion
            children: [
              _buildDashboardCard(
                icon: Icons.bar_chart,
                title: 'الإحصائيات',
                color: Colors.blue,
              ),
              _buildDashboardCard(
                icon: Icons.people,
                title: 'المستخدمين',
                color: Colors.green,
              ),
              _buildDashboardCard(
                icon: Icons.chat, // Alternative: Icons.message
                title: 'الرسائل',
                color: Colors.orange,
              ),
              _buildDashboardCard(
                icon: Icons.settings,
                title: 'الإعدادات',
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable helper widget to build the colored grid cards
  Widget _buildDashboardCard({
    required IconData icon,
    required String title,
    required MaterialColor color
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color.shade50, // Very light background tint
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.shade400, width: 1.5), // Colored border
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color, // Text matches the main theme color
            ),
          ),
        ],
      ),
    );
  }
}