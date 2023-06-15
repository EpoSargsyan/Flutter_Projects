import 'package:flutter/material.dart';
import 'package:insta_copy_2/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}