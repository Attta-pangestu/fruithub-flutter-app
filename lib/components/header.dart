import 'package:flutter/material.dart';
import 'package:fruithub/components/responsive.dart';
import 'package:fruithub/components/HeaderWebMenu.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Mobile view
        if (Responsive.isMobile(context))
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        Image.asset('assets/images/logo.png', height: 100, width: 100),
        const Text(
          'FruitHub',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const HeaderWebMenu(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            elevation: 17,
            minimumSize: const Size(25, 44),
          ),
          child: const Text(
            'Join',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
