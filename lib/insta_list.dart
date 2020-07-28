import 'package:flutter/material.dart';
import 'package:Rasyiidgram/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 11,
      itemBuilder: (context, index) => index == 0 ? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height * 0.15,
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          //1st
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/profile.jpg'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'FT_Rasyiid',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                ),
              ],
            ),
          ),

          //2sd
          Flexible(
            fit: FlexFit.loose,
            child: Image.asset(
              'assets/image/duckling.jpg',
              fit: BoxFit.cover,
            ),
          ),

          //3rd
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.favorite_border,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.comment),
                    ),
                    Icon(Icons.send),
                  ],
                ),
                Icon(Icons.bookmark_border)
              ],
            ),
          ),

          //4th
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Liked by Rizal, Bahrul, rafif and 277 others.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          //5th
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
            child: Row(
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/image/profile.jpg'
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add a comment...',
                    ),
                  ),
                ),
              ],
            ),
          ),

          //6th
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('2 hours ago', style: TextStyle(color: Colors.grey),)
          )
        ],
      ),
    );
  }
}
