import 'package:flutter/material.dart';
import 'package:tikodc/util/post_template.dart';

class Post3 extends StatelessWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userame: 'Ashborn',
        videoDescription: 'tiktok video drole',
        numberOfComments: '18143',
        numberOfLikes: '8 M',
        numberOfShares: '5122',
        userPost: Container(
          color: Colors.blue,
          )
          );
  }
}
