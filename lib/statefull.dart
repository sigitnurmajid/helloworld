import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TextMainStateful extends StatefulWidget {

  final state = _TextMainStatefulState();

  @override
  State<TextMainStateful> createState() => _TextMainStatefulState();

}

class _TextMainStatefulState extends State<TextMainStateful> {
  var listNama = ['regit','lisgiani','drajat','2113191051'];
  var listWarna = [Colors.red, Colors.purple, Colors.teal, Colors.lime,
  Colors.indigo, Colors.deepPurple, Colors.cyan, Colors.blue, Colors.yellow ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            const Text('Apa Kabar', textDirection: TextDirection.ltr),
            Text( listNama[index % listNama.length], textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),  
            ),
            FloatingActionButton(
              tooltip: 'Refresh',
              child: const Icon(Icons.refresh),
              onPressed: increment
            )
          ],
        ),
    );
  }

  increment(){
    setState(() {
      index += 1;
    });
  }
}