import 'package:flutter/material.dart';

class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '@diarraidrissadiaraba',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('tiktok vidéo drole'),
                    ]),
              ))
        ],
      ),
    );
  }
}
