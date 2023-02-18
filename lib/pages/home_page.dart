import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/widgets/news_widget.dart';
import 'package:news_app_ui/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String home = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Search news',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                const Icon(
                  Icons.menu,
                  size: 35,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomizedText(
              text: 'Good Morning',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomizedText(
              text: 'Explore the world by one click',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // news widget

            Container(
              height: 200,
              padding: const EdgeInsets.only(left: 80),
              child: Swiper(
                itemCount: 3,
                //controller: SwiperController(),
                itemBuilder: (_, index) {
                  return const NewsWidget();
                },
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.white,
                      color: Colors.orange
                    )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
