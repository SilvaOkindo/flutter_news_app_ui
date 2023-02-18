import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/pages/crypto_news.dart';
import 'package:news_app_ui/widgets/news_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String home = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabs = ['Covid-19', 'Sports', 'Tech', 'Crypto', 'Fashion'];

  List<Widget> tabviews = [
    const Center(child: Text('Covid news'),),
    const Center(child: Text('Sports news'),),
    const Center(child: Text('Tech news'),),
    const CryptoNewsPage(),
    const Center(child: Text('Fashion news'),),
  ];

  int currentIndex = 3;

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
            const Text(
              'Good Morning',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Explore the world by one click',
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
                        activeColor: Colors.white, color: Colors.orange)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tabs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        margin: const EdgeInsets.all(5),
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            color: currentIndex == index
                                ? Colors.black
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        duration: const Duration(milliseconds: 300),
                        child: Center(
                            child: Text(
                          tabs[index],
                          style: TextStyle(
                              color: currentIndex == index
                                  ? Colors.white
                                  : Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        )),
                      ),
                    );
                  }),
            ),
            //Center(child: Text(tabs[currentIndex]),)
            const SizedBox(height: 5,),
           SingleChildScrollView(child: tabviews[currentIndex],)
          ],
        ),
      )),
    );
  }
}
