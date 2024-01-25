import "package:flutter/material.dart";
import 'package:nft_flutter/components/app_theme.dart';
import 'package:nft_flutter/components/assets_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: AvatarProfile.asset(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
