import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';
import 'assets.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvatar(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: profile[index],
                          ),
                          backgroundColor: Color(0xfff8faf8),
                          radius: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "${name[index]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.more_vert),
                              color: Colors.black,
                              onPressed: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: FadeInImage.assetNetwork(                    
                    placeholder: 'assets/tenor.gif',
                    image: background[index],
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.heart),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.comment),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.paperPlane),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(FontAwesomeIcons.bookmark),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Liked by '),
                            Text(
                              "${likes[index]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(' and '),
                            Text(
                              "${numberlikes[index]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa.')
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        childCount: background.length,
      ),
    );
  }
}
