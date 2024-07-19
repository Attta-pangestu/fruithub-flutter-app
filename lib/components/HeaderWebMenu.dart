import 'package:flutter/material.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuItem("Home"), 
        MenuItem("Favorite"), 
        MenuItem("About"), 
        MenuItem("Order"), 
      ],
    );
  }

  Padding MenuItem(name) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {},
        child: Text(name, style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 16, 
        )),
      ),
    );
  }
}
