import "package:flutter/material.dart";

class PostPage extends StatefulWidget {
  final String price;
  final String creator;
  final String image;
  final String minutes;
  final String hours;
  final String day;
  final String name;
  final String creatorImage;
  final String follower;

  const PostPage({
    super.key,
    required this.price,
    required this.creator,
    required this.image,
    required this.minutes,
    required this.hours,
    required this.day,
    required this.name,
    required this.creatorImage,
    required this.follower,
  });

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/${widget.image}.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
