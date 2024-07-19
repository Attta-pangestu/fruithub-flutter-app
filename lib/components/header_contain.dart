import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HeaderContain extends StatelessWidget {
  const HeaderContain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Row(
          children: [
            const Expanded(
              flex: 3,
              child: HeaderBody(),
            )
          ],
        )
      ],
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
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ), 
        const SizedBox(height: 20), 
        Container(
          padding: const EdgeInsets.only(left: 10, right: 20),
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white
            
          ),
          child: const TextField(
              decoration: InputDecoration(
                prefix: Icon(Icons.search, color: Colors.black,),
                hintText: 'Search your favorite items',
                hintStyle: TextStyle(color: Colors.black54),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none)
              ),
              
          ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3447782948.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2463335456
        ), 
        const SizedBox(height: 20,), 
        SizedBox(height: 50, child: OutlinedButton(
          child: Text('Order Now', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
          onPressed: () {},
          style: OutlinedButton.styleFrom(backgroundColor: Colors.amberAccent) ,
        ),),
        const SizedBox(height: 20),
      ],
    );
  }
}
