import 'package:flutter/material.dart';

class CryptoNewsTile extends StatelessWidget {
  const CryptoNewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.all(10),
      height: 120,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage("assets/images/blockchain-3440455.jpg"),
                  fit: BoxFit.cover)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'How income tax rulw applies on your\ncryptocurrency gains-Explained',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text('15 min read'),
                SizedBox(
                  width: 90,
                ),
                Text('Today')
              ],
            )
          ],
        )
      ]),
    );
  }
}
