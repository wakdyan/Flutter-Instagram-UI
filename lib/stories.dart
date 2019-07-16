import 'package:flutter/material.dart';
import 'assets.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Color(0xfff8faf8),
        child: Column(
          children: <Widget>[
            Divider(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Stories'),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.arrow_right),
                    Text('Watch All'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 33,
                          backgroundColor: backgroundStories[index] == true
                              ? Colors.redAccent
                              : Colors.grey,
                          child: CircleAvatar(
                            child: Stack(
                              // fit: StackFit.expand,
                              children: <Widget>[
                                Image.asset(
                                  stories[index],
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ],
                            ),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 6,
                          child: Text(
                            name[index],
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
