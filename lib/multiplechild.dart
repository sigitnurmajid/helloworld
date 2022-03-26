import 'package:flutter/material.dart';

class Multiple extends StatelessWidget {
  const Multiple({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.archive),
                Text('Artikel Terbaru', style: TextStyle(
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            Card(
              child: Column(
                children: [
                  Image.network('https://storage.googleapis.com/cms-storage-bucket/90e34daecca082eb9b28.png'),
                  const Text('Belajar flutter')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}