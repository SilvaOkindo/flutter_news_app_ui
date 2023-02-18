import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
                image: AssetImage("assets/images/covid-19.png"),
                fit: BoxFit.cover)),
      ),
      Positioned(
        bottom: 20,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Covid-19: ICYM studying covid vaccine',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Text(
                'effect on Delta plus result likely soon',
                style: TextStyle(fontSize: 13, color: Colors.white),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
