import 'package:flutter/material.dart';

class ContainerWidget {
  static SizedBox containerWidget({Widget? widget}) {
    return SizedBox(
      height: 160,
      width: 352,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: widget,
        ),
      ),
    );
  }
}
