import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, count) {
                  return Card();
                },
              ),
            ),
            Text("Total amount: "),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
