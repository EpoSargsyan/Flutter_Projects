import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    CrossAxisAlignment: CrossAxisAlignment.start;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,

                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container( 
          height: 400,    // HISHEM POXEMM ----- >>>>> 
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text('Liked by'),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Text(
                  'jsnjn',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text('and'),
              ),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ]),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  text: name + ' ',
                ),
                TextSpan(
                  text: 'Hello world you dont see the new instagram like this',
                ),
              ],
            ),
          )
        ),
      ],
    );
  } 
}