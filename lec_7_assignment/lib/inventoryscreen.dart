import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'المخزون',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            _buildInventoryItem(title: 'عنصر رقم 1'),
            const Divider(height: 1, indent: 16, endIndent: 16),
            _buildInventoryItem(title: 'عنصر رقم 2'),
            const Divider(height: 1, indent: 16, endIndent: 16),
            _buildInventoryItem(title: 'عنصر رقم 3'),
          ],
        ),
      ),
    );
  }

  Widget _buildInventoryItem({required String title}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      leading: const Icon(Icons.inventory_2, color: Colors.black54),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: const Text(
        'تفاصيل الدفعة أو الكمية',
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.black87),
      onTap: () {
        // Handle item tap
      },
    );
  }
}