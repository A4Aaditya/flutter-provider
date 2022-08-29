import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/home/provider/provider.dart';

class ScreenSecond extends StatelessWidget {
  const ScreenSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Consumer<CounterProvider>(
            builder: (context, value, child) => Text(
              'Hello ${value.counter}',
              style: const TextStyle(fontSize: 28.0),
            ),
          ),
        ],
      ),
    );
  }
}
