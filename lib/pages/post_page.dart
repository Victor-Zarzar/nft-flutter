import "dart:ui";
import "package:flutter/material.dart";
import "package:nft_flutter/components/app_theme.dart";
import "package:nft_flutter/pages/detail_page.dart";

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
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
              creator: widget.creator,
              name: widget.name,
              price: widget.price,
              image: widget.image,
              day: widget.day,
              follower: widget.follower,
              creatorImage: widget.creatorImage,
              minutes: widget.minutes,
              hours: widget.hours,
            ),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/${widget.image}.png'),
              fit: BoxFit.cover,
            ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey.shade200.withOpacity(0.6),
                                Colors.grey.shade200.withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: Text(
                            '${widget.day} D',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      ':',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                CardColor.primaryColor.withOpacity(0.6),
                                CardColor.primaryColor.withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: Text(
                            '${widget.hours} H',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      ':',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                CardColor.primaryColor.withOpacity(0.6),
                                CardColor.primaryColor.withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: Text(
                            '${widget.minutes} M',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 270,
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(flex: 3, child: Container(height: 50)),
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    CardColor.primaryColor.withOpacity(0.6),
                                    CardColor.primaryColor.withOpacity(0.3),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('lib/assets/et.png'),
                                    Text(
                                      '${widget.price} ETH',
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
