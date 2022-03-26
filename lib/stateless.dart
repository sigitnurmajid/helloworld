import 'package:flutter/material.dart';

class TextMainStateless extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const TextMainStateless({required this.textOne, required this.textTwo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(textOne, textDirection: TextDirection.ltr),
            Text(textTwo, textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),  
            )
          ],
        ),
    );
  }
}