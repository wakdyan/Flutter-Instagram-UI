import 'package:instagram_app/models/like.dart';
import 'package:instagram_app/models/post.dart';
import 'package:instagram_app/models/user.dart';

class HomeViewModel {
  List<User> _users = [
    User(
      avatar:
          "https://vignette.wikia.nocookie.net/spongebob/images/7/7b/Krabs_artwork.png/revision/latest?cb=20181201224233",
      name: "mr.crab",
      hasStory: true,
      post: Post(
        image:
            "https://i.pinimg.com/originals/9b/3a/e9/9b3ae9a543058ab9d8397555c131eba3.jpg",
        caption:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa.",
        likes: [
          Like("Andy"),
          Like("Ricardo"),
          Like("Andrea"),
          Like("Antonio"),
          Like("Spongebob"),
        ],
      ),
    ),
    User(
      avatar:
          "https://upload.wikimedia.org/wikipedia/id/thumb/b/bf/KFC_logo.svg/1024px-KFC_logo.svg.png",
      name: "kfc_official",
      hasStory: true,
      post: Post(
        image: "https://images.financialexpress.com/2018/06/KFC.jpg",
        caption:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa.",
        likes: [
          Like("John"),
          Like("Estela"),
        ],
      ),
    ),
    User(
      avatar:
          "https://d26horl2n8pviu.cloudfront.net/link_data_pictures/images/000/097/991/shared_link/og-avatar-541739b5880b8586eeb033747a8a2cf3e689860d59b506d29a9633aed86d057d.png?1472667527",
      name: "devtech",
      hasStory: false,
      post: Post(
        image:
            "https://cdn.pixabay.com/photo/2016/02/19/11/19/computer-1209641__340.jpg",
        caption:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa.",
        likes: [
          Like("Erasmo"),
          Like("Torri"),
          Like("Ethel"),
          Like("Boris"),
          Like("Alayna"),
          Like("Michael"),
        ],
      ),
    ),
    User(
      avatar:
          "https://lh3.googleusercontent.com/proxy/bV1TTX9-G4MC1tKD_Qgy3_8jSc6gSu6jULGidZGQpBJCWQv0SQMpKWOujzYeRSFDgtFxAeFlMmZ--qXW1misFdue231gXH9yykiAfH352wkCj6IHKVw17817khFqWt7A",
      name: "wonderfulindonesia",
      hasStory: true,
      post: Post(
        image:
            "https://cdn.pixabay.com/photo/2018/10/28/09/56/landscape-3778244_960_720.jpg",
        caption:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa.",
        likes: [
          Like("Ernestina"),
          Like("Brian"),
          Like("Tony"),
          Like("Bridgett"),
        ],
      ),
    ),
    User(
      avatar: "https://miro.medium.com/max/1200/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
      name: "flutter",
      hasStory: false,
      post: Post(
        image:
            "https://www.sayonetech.com/media/uploads/zinnia/flutter_banner.jpg",
        caption:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa.",
        likes: [
          Like("Richard"),
          Like("Edythe"),
          Like("Elbert"),
          Like("Mitsue"),
          Like("Santana"),
        ],
      ),
    ),
  ];
  List<User> get users => _users;
}
