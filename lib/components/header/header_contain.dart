import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeaderContain extends StatelessWidget {
  const HeaderContain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: HeaderBody(),
                )
              ],
            )
          ],
        ),
        Image.asset('assets/images/fruits.png')
      ],
    );
  }
}

class MobileHeaderContain extends StatelessWidget {
  const MobileHeaderContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset('assets/images/fruits.png'), const HeaderBody()],
    );
  }
}

class HeaderBody extends StatelessWidget {
  const HeaderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AutoSizeText(
          'Eat Today',
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 53),
        ),
        const SizedBox(height: 10),
        const AutoSizeText(
          'Live another day',
          maxLines: 1,
          style: TextStyle(fontSize: 53),
        ),
        const Text(
          'Welcome to FruitHub, yout premiere online shop for fruits and vegetables.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 20),
          height: 50,
          decoration: const BoxDecoration(color: Colors.white),
          child: const TextField(
            decoration: InputDecoration(
                prefix: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search your favorite items',
                hintStyle: TextStyle(color: Colors.black54),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            style:
                OutlinedButton.styleFrom(backgroundColor: Colors.amberAccent),
            child: const Text(
              'Order Now',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
