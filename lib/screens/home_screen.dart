import 'package:flutter/material.dart';
import 'package:instagram_app/data/assets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        leading: IconButton(
          icon: Icon(Icons.photo_camera),
          onPressed: () {},
          color: Colors.black87,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.live_tv),
            onPressed: () {},
            color: Colors.black87,
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
            color: Colors.black87,
          )
        ],
        title: Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Instagram', fontSize: 26, color: Colors.black87),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          buildStories(),
          buildPost(),
        ],
      ),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildStories() {
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
              height: MediaQuery.of(context).size.height / 8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: profile.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor:
                          (index % 2 == 0) ? Colors.red : Colors.grey,
                      child: CircleAvatar(
                        child: Image.network(
                          profile[index],
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                        backgroundColor: Colors.white,
                        radius: 35,
                      ),
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

  Widget buildPost() {
    return null;
  }

  Widget buildBottomNavBar() {
    return SizedBox(
      height: 45,
      child: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        backgroundColor: Color(0xfff8faf8),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        iconSize: 29,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Add"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Peoples"),
          ),
        ],
      ),
    );
  }
}
