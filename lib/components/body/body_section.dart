import 'package:flutter/material.dart';
import 'package:fruithub/components/body/product_detail.dart';
import 'package:fruithub/model/product_model.dart';

class BodySection extends StatelessWidget {
  final int crossAxisCount; 
  final double aspectRatio;

  const BodySection({super.key, this.crossAxisCount = 3, this.aspectRatio = 1.1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1230),
        child: Column(
          children: [
            listMenu(), 
          ]
        ),
      )
    );
  }

  GridView listMenu() {
    return GridView.builder(
            shrinkWrap:true ,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount ,
              childAspectRatio: aspectRatio, 
              
            ), 
            itemBuilder: (context,index ) => ProductDetail(press: () {} , product: products[index] ,), 
            itemCount: products.length,
          );
  }
}