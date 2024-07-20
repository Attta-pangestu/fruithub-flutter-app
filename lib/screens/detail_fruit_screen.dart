import 'package:flutter/material.dart';
import 'package:fruithub/model/product_model.dart';

class DetailFruitScreen extends StatelessWidget {
  final Product product;

  const DetailFruitScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Detail Fruit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(product.image),
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Deskripsi',
              style:  TextStyle(fontWeight: FontWeight.bold , fontSize: 18)
            ),
            SizedBox(height: 8),
            Text(product.description),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Action for order now button
                },
                child: Text('Order Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
