import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/view_models/home_view_model.dart';
import 'package:transparent_image/transparent_image.dart';

import '../utils/custom_colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeViewModel = HomeViewModel();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColors,
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
            fontFamily: 'Instagram',
            fontSize: 26,
            color: Colors.black87,
          ),
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
        color: CustomColors.backgroundColors,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Stories'),
                  Row(
                    children: <Widget>[
                      Icon(Icons.arrow_right),
                      Text('Watch All'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount: homeViewModel.users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: homeViewModel.users[index].hasStory
                          ? Colors.red
                          : Colors.grey,
                      child: CircleAvatar(
                        child: Image.network(
                          homeViewModel.users[index].avatar,
                          fit: BoxFit.fill,
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
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.only(bottom: 12),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: homeViewModel.users[index].avatar,
                        ),
                        backgroundColor: CustomColors.backgroundColors,
                        radius: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        homeViewModel.users[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                    image: homeViewModel.users[index].post.image,
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
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text.rich(buildTextSpan(index)),
                        Text(homeViewModel.users[index].post.caption)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: homeViewModel.users.length,
      ),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      unselectedFontSize: 0,
      selectedFontSize: 0,
      backgroundColor: CustomColors.backgroundColors,
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
    );
  }

  InlineSpan buildTextSpan(int index) {
    return TextSpan(
      text: 'Liked by ',
      children: [
        TextSpan(
          text: homeViewModel.users[index].post.likes[0].name,
          style: TextStyle(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: ' and ',
              style: TextStyle(fontWeight: FontWeight.w400),
              children: [
                TextSpan(
                  text:
                      '${homeViewModel.users[index].post.likes.length - 1} others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
