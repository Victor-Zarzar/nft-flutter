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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
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
                        SizedBox(width: 13),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
