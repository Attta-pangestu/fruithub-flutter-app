import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/model/product_model.dart';
import 'package:fruithub/screens/detail_fruit_screen.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductDetail({super.key, required this.press, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailFruitScreen(product: product),
            ),
          );
        },
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(product.image, fit: BoxFit.cover,),
                )),
            const SizedBox(
              height: 10,
            ),
            AutoSizeText(
              product.title,
              maxLines: 1,
              minFontSize: 14,
              style: const TextStyle(fontSize: 15),
            )
            
          ],
        ),
      ),
    );
  }
}
