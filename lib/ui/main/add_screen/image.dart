import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  final String name;
  const FullImage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Image.asset(name,fit: BoxFit.cover,))),
    );

  }
}
