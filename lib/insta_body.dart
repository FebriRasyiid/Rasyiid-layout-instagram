import 'package:flutter/material.dart';
import 'package:Rasyiidgram/insta_list.dart';

class instaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: InstaList(),
        ),
      ],
    );
  }
}
