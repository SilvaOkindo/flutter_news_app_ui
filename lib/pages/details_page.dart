import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  static String details = 'details';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back')),
    );
  }
}
