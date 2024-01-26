import "dart:ui";

import "package:flutter/material.dart";
import "package:nft_flutter/components/app_theme.dart";

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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/${widget.image}.png'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: PostColor.primaryColor,
              blurRadius: 16,
            ),
          ],
        ),
        width: double.infinity,
        height: 350,
        child: Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
