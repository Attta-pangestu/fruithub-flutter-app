import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/model/product_model.dart';
import 'package:fruithub/screens/detail_fruit_screen.dart';

class ProductDetail extends StatefulWidget {
  final Product product;
  final VoidCallback press;
  const ProductDetail({super.key, required this.press, required this.product});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavoriteActive = false;
  bool isCartActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailFruitScreen(product: widget.product),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  widget.product.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: isCartActive ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isCartActive = !isCartActive;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isFavoriteActive ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavoriteActive = !isFavoriteActive;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                widget.product.title,
                maxLines: 1,
                minFontSize: 14,
                style: const TextStyle(fontSize: 15),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
