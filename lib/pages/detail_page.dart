import "dart:ui";
import "package:flutter/material.dart";
import "package:nft_flutter/components/app_theme.dart";

class DetailPage extends StatelessWidget {
  final String price;
  final String creator;
  final String image;
  final String minutes;
  final String hours;
  final String day;
  final String name;
  final String creatorImage;
  final String follower;
  const DetailPage({
    Key? key,
    required this.price,
    required this.creator,
    required this.image,
    required this.minutes,
    required this.hours,
    required this.day,
    required this.name,
    required this.creatorImage,
    required this.follower,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGround.primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: BackGround.primaryColor,
              automaticallyImplyLeading: true,
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/$image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 70),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 39,
                                    height: 39,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          CardColor.thirdColor.withOpacity(0.6),
                                          CardColor.thirdColor.withOpacity(0.3),
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      '$day D',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                ':',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: FontTextColor.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 4),
                              ClipRRect(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 39,
                                    height: 39,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          CardColor.thirdColor.withOpacity(0.6),
                                          CardColor.thirdColor.withOpacity(0.3),
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      '$hours H',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                ':',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: FontTextColor.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 4),
                              ClipRRect(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 39,
                                    height: 39,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          CardColor.thirdColor.withOpacity(0.6),
                                          CardColor.thirdColor.withOpacity(0.3),
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      '$minutes M',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ClipRRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                alignment: Alignment.center,
                                width: 130,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      CardColor.thirdColor.withOpacity(0.6),
                                      CardColor.thirdColor.withOpacity(0.3),
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
                                        '$price ETH',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: CardColor.thirdColor,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 80,
                        height: 4,
                        color: CardColor.fourthColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
