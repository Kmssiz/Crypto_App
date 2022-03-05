import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final int indext;
  const Page({Key? key, required this.indext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page n°${indext + 1}"),
      ),
    );
  }
}
