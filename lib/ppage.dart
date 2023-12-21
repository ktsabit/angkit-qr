import 'package:angkit_customer/batch_data.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => BatchData()));
          },
          child: Text("Go Data"),
        ),
      ),
    );
  }
}
