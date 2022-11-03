import 'package:flutter/material.dart';
import 'my_icon.dart';

class PostTemplate extends StatelessWidget {
  final String userame;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final Widget userPost;

  PostTemplate({
    required this.userame,
    required this.videoDescription,
    required this.numberOfComments,
    required this.numberOfLikes,
    required this.numberOfShares,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '@' + userame,
                      style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: videoDescription),
                        TextSpan(
                          text: '#fyp #flutter',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ]),
            ),
          ),
          //button
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyIcon(
                    icon: Icons.favorite,
                    nombre: numberOfLikes,
                  ),
                  MyIcon(
                    icon: Icons.chat_bubble_outline,
                    nombre: numberOfComments,
                  ),
                   MyIcon(
                    icon: Icons.bookmark,
                    nombre: numberOfComments,
                  ),
                  MyIcon(
                    icon: Icons.send,
                    nombre: numberOfShares,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
