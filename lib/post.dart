import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                          child: Image.asset(
                            profile[index],
                            width: MediaQuery.of(context).size.width,
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
                Image.asset(
                  background[index],
                  // height: MediaQuery.of(context).size.height / 1.6,
                  // width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
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
