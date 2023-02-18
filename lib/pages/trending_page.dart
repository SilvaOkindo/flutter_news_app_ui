import 'package:flutter/material.dart';
import 'package:news_app_ui/widgets/crypto_news_tile.dart';
import 'package:news_app_ui/widgets/tiles.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  static String onboarding = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Walk with Trend',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Don\'t stay behind, read the trend',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 170,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return const Tiles();
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Top reads of the day',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 290,
            //color: Colors.amberAccent,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  return const CryptoNewsTile();
                }),
          )
        ],
      ),
    ));
  }
}
