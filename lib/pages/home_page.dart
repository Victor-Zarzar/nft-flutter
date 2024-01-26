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
    ['ali', 'power', '10', '1', '2', '1K', 'h2.png', '20', '2'],
    ['alireza', 'reach', '50', '3', '4', '1K', 'h2.png', '30', '5'],
    ['abdoul', 'pore', '20', '2', '2', '1K', 'h1.png', '20', '2'],
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                app_bar(),
                const SizedBox(height: 24),
                more(),
                const SizedBox(height: 10),
                tabbar(),
                const SizedBox(height: 24),
                ...postGenerate(),
              ],
            ),
          ),
        ));
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
          )
        ],
      ),
    );
  }

  Padding app_bar() {
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
