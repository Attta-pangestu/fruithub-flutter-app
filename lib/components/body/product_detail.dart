import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/model/product_model.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductDetail({super.key, required this.press, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                child: Image.network(product.image, fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(16),
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
    );
  }
}
