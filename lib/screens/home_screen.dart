import 'package:flutter/material.dart';
import 'package:fruithub/components/body/body_section.dart';
import 'package:fruithub/components/header/header_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: <Widget>[
      HeaderSection(),
      BodySection(),
    ]))));
  }
}
