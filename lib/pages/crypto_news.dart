import 'package:flutter/material.dart';
import 'package:news_app_ui/widgets/crypto_news_tile.dart';

class CryptoNewsPage extends StatefulWidget {
  const CryptoNewsPage({super.key});

  @override
  State<CryptoNewsPage> createState() => _CryptoNewsPageState();
}

class _CryptoNewsPageState extends State<CryptoNewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 180,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 8,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (_, index) {
              return const CryptoNewsTile();
            }),
      ),
    );
  }
}
