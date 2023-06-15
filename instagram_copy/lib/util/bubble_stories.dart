import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  // const BubbleStories({ Key? key }) : super(key: key);
  final String text;

  BubbleStories({ required this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          Text(text),
        ],
      ),      
    );
  }
}