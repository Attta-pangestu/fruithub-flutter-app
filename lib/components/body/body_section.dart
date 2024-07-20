import 'package:flutter/material.dart';
import 'package:fruithub/components/body/product_detail.dart';
import 'package:fruithub/components/responsive.dart';
import 'package:fruithub/model/product_model.dart';

class BodySection extends StatelessWidget {
  final int crossAxisCount;
  final double aspectRatio;

  const BodySection(
      {super.key, this.crossAxisCount = 3, this.aspectRatio = 1.1});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1230),
          child: Column(children: [
            Responsive(
              mobile: ResponsiveListMenu(
                crossAxisCount: size.width < 690 ? 2 : 3,
                aspectRatio: size.width < 500 ? 1.3 : 1.1,
              ),
              desktop: ResponsiveListMenu(
                crossAxisCount: size.width < 650 ? 2 : 3,
                aspectRatio: size.width < 650 ? .85 : 1.1,
              ),
            ),
          ]),
        ));
  }
}

class ResponsiveListMenu extends StatelessWidget {
  const ResponsiveListMenu({
    super.key,
    required this.crossAxisCount,
    required this.aspectRatio,
  });

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => ProductDetail(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
