import 'package:flutter/material.dart';
import 'package:insta_copy_2/util/bubble_stories.dart';
import 'package:insta_copy_2/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['epo', 'art', 'muk', 'val', 'tiko', 'suro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',
            style: TextStyle(color: Colors.black),
            ),
            
            Row(
              children: [
                Icon(Icons.add),
                Container(width: 20.0),
                Icon(Icons.favorite),
                Container(width: 20.0),
                Icon(Icons.share),
              ]
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              }
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index],
                );
              }),
          ), 
        ],
      ),
    );
  }
}