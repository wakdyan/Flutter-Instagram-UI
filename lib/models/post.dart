import 'like.dart';

class Post {
  final String image;
  final String caption;
  final List<Like> likes;

  Post({this.image, this.caption, this.likes});
}
