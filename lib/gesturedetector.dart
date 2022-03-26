import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({ Key? key }) : super(key: key);

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {

  String _title = '';
  
  @override
  void initState() {
    super.initState();
    _title = 'Gesture Detector';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_title),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              _changeTitle('onTap Clicked');
            },
            child: _buildItem('Click with tap'),
          ),
          GestureDetector(
            onDoubleTap: () {
              _changeTitle('onDoubleTap Clicked');
            },
            child: _buildItem('Click with double tap'),
          ),
          GestureDetector(
            onLongPress: () {
              _changeTitle('onLongPress Clicked');
            },
            child: _buildItem('Click with long press'),
          ),
          GestureDetector(
            onVerticalDragDown: (dragDetails) {
              _changeTitle('Vertical Drag Clicked');
            },
            child: _buildItem('Click with vertical drag'),
          ),
          GestureDetector(
            onHorizontalDragEnd: (dragDetails) {
              _changeTitle('Horizontal Drag Clicked');
            },
            child: _buildItem('Click with horizontal drag'),
          ),
          GestureDetector(
            onScaleEnd: (dragDetails) {
              _changeTitle('Scale Clicked');
            },
            child: _buildItem('Click with scale left'),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String title){
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  void _changeTitle(String title){
    setState(() {
      _title = title;
    });
  }
}