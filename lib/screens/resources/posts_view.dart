import 'package:flutter/material.dart';

class PostsView {
  static postsView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.80,
      color: Colors.grey,
    );
  }
}
