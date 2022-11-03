import 'package:flutter/material.dart';
import 'package:tikodc/util/post_template.dart';

class Post2 extends StatelessWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userame: 'Doctor Stone',
        videoDescription: 'tiktok video drole',
        numberOfComments: '88223',
        numberOfLikes: '18 M',
        numberOfShares: '100000',
        userPost:  Container(
          color: Colors.pink
          )
          );
  }
}
