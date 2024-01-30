import 'dart:ui';

import "package:flutter/material.dart";
import 'package:nft_flutter/components/app_theme.dart';
import 'package:nft_flutter/pages/post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  List postItem = [
    ['Darth Vader', 'power', '10', '1', '2', '1K', 'h2.png', '20', '2'],
    ['Monkey 1', 'reach', '50', '3', '4', '1K', 'h3.png', '30', '5'],
    ['Monkey 2', 'pore', '20', '2', '2', '1K', 'p3.png', '20', '2'],
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGround.primaryColor,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    appbar(),
                    const SizedBox(height: 24),
                    more(),
                    const SizedBox(height: 10),
                    tabbar(),
                    const SizedBox(height: 24),
                    ...postGenerate(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          CardColor.secondaryColor.withOpacity(0.5),
                          CardColor.secondaryColor.withOpacity(0.3),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.home,
                          size: 26,
                          color: CardColor.thirdColor,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 26,
                          color: CardColor.thirdColor,
                        ),
                        Icon(
                          Icons.search,
                          size: 26,
                          color: CardColor.thirdColor,
                        ),
                        Icon(
                          Icons.add_box_outlined,
                          size: 26,
                          color: CardColor.thirdColor,
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
    );
  }

  List<Widget> postGenerate() {
    return List.generate(
        3,
        (index) => PostPage(
              creator: postItem[index][0],
              name: postItem[index][1],
              price: postItem[index][2],
              image: postItem[index][3],
              day: postItem[index][4],
              follower: postItem[index][5],
              creatorImage: postItem[index][6],
              minutes: postItem[index][7],
              hours: postItem[index][8],
            ));
  }

  Widget tabbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TabBar(
        controller: _controller,
        labelColor: TabBarColor.primaryColor,
        unselectedLabelColor: TabBarColor.secondaryColor,
        indicatorColor: TabBarColor.thirdColor,
        labelStyle: const TextStyle(fontWeight: FontWeight.w600),
        tabs: const [
          Tab(
            text: 'New',
          ),
          Tab(
            text: 'Art',
          ),
          Tab(
            text: 'Game',
          ),
          Tab(
            text: 'Music',
          ),
        ],
      ),
    );
  }

  Padding more() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Live auctions',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                'more',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              Icon(Icons.arrow_right_sharp)
            ],
          ),
        ],
      ),
    );
  }

  Padding appbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('lib/assets/profile.jpg'),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 21,
                backgroundColor: AppTheme.secondaryColor,
                child: Icon(
                  Icons.search,
                  size: 26,
                  color: AppTheme.primaryColor,
                ),
              ),
              const SizedBox(width: 13),
              CircleAvatar(
                radius: 21,
                backgroundColor: AppTheme.secondaryColor,
                child: Icon(
                  Icons.notifications_none,
                  size: 26,
                  color: AppTheme.primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
