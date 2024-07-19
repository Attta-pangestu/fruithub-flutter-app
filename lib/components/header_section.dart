import 'package:flutter/material.dart';
import 'package:fruithub/components/header.dart';
import 'package:fruithub/components/responsive.dart';
import 'package:fruithub/components/header_contain.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blue[200],
        padding: const EdgeInsets.all(10),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1230),
          child: Column(children: [
            const Header(),
            const HeaderContain(),
          ]),
        ));
  }
}
