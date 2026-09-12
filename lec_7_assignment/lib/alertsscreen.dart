import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'التنبيهات',
          style: TextStyle(color: Colors.black87, fontSize: 18),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // --- SnackBar Button ---
            OutlinedButton(
              onPressed: () {
                // Hides any currently showing snackbar before showing a new one
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'تم حفظ البيانات بنجاح',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    backgroundColor: Color(0xFF4CAF50), // Green matching the image
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: _buttonStyle(),
              child: const Text('إظهار SnackBar'),
            ),

            const SizedBox(height: 16),

            // --- AlertDialog Button ---
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: const Text(
                        'تأكيد',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content: const Text(
                        'هل أنت متأكد من الحذف؟',
                        style: TextStyle(fontSize: 16),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Closes the dialog
                          },
                          child: const Text(
                            'إلغاء',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Closes the dialog
                          },
                          child: const Text(
                            'موافق',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              style: _buttonStyle(),
              child: const Text('إظهار AlertDialog'),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to keep the button styling clean and reusable
  ButtonStyle _buttonStyle() {
    return OutlinedButton.styleFrom(
      foregroundColor: Colors.deepPurple,
      side: BorderSide(color: Colors.grey.shade300),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}