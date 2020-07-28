import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Stories',
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            'Watch All',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );

  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/image/profile.jpg'
                ),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          index == 0 ? Positioned(
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: Icon(
                Icons.add,
                size: 15.0,
                color: Colors.white,
              ),
            ),
          ) : new Container()
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
