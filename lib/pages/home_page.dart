import "package:flutter/material.dart";
import 'package:nft_flutter/components/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackGround.primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              app_bar(),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Text(
                    'Live auctions',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
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
