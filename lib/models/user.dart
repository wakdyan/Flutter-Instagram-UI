import 'package:instagram_app/models/post.dart';

class User {
  final String name;
  final String avatar;
  final Post post;
  final bool hasStory;

  User({this.name, this.avatar, this.post, this.hasStory});
}
