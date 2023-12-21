import 'package:flutter/material.dart';

class JenisTernak extends StatefulWidget {
  const JenisTernak({super.key});

  @override
  State<JenisTernak> createState() => _JenisTernakState();
}

class _JenisTernakState extends State<JenisTernak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "ID ",
                          style: TextStyle(
                              fontSize: 30,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "jf8U31",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: const Text('AB'),
                      ),
                      label: const Text('AaronBurr'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
