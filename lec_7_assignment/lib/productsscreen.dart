import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'قائمة المنتجات',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              // Pass your specific image paths here
              _buildProductCard(
                price: '\$9',
                imagePath: 'assets/images/cow.jpg',
              ),
              const SizedBox(height: 12),
              _buildProductCard(
                price: '\$3',
                imagePath: 'assets/images/abu.jpg',
              ),
              const SizedBox(height: 12),
              _buildProductCard(
                price: '\$5',
                imagePath: 'assets/images/milk.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Notice we added imagePath as a required string
  Widget _buildProductCard({required String price, required String imagePath}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // The image widget replacing the grey container
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover, // Adjusts how the image fills the box
              // This error builder prevents the app from crashing if you typo the image name
              errorBuilder: (context, error, stackTrace) => Container(
                width: 80,
                height: 80,
                color: Colors.grey[300],
                child: const Icon(Icons.broken_image, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Product Details
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اسم المنتج',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'وصف قصير للمنتج',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Price
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              price,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}