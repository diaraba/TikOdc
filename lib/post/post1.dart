import 'package:flutter/material.dart';
import 'package:tikodc/util/my_icon.dart';
import 'package:tikodc/util/post_template.dart';

class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userame: 'diarraidrissadiaraba',
        videoDescription: 'tiktok video drole',
        numberOfComments: '1223',
        numberOfLikes: '1.5 M',
        numberOfShares: '122',
        userPost: Container(
          color: Colors.deepPurple,
          )
          );
  }
}
