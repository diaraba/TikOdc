import 'package:flutter/material.dart';
import 'package:tikodc/post/post1.dart';
import 'package:tikodc/post/post2.dart';
import 'package:tikodc/post/post3.dart';

class UserHomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
