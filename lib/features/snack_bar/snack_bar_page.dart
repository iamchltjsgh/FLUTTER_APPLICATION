import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Page')),
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: ElevatedButton(
              child: Text('Show SnackBar'),
              onPressed: () {
                ScaffoldMessenger.of(
                  ctx,
                ).showSnackBar(SnackBar(content: Text('Hello, SnackBar!')));
              },
            ),
          );
        },
      ),
    );
  }
}
