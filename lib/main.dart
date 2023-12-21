import 'package:angkit_customer/home_page.dart';
import 'package:angkit_customer/ppage.dart';
import 'package:flutter/material.dart';
import 'package:angkit_customer/batch_data.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  // runApp(const ProviderScope(child: MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angkit QR',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // colorScheme: 
        // disabledColor: 
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        // // useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}
