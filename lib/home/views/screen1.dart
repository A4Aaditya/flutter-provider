import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/home/provider/provider.dart';
import 'package:provider_statemanagement/home/views/screen2.dart';
import 'package:provider_statemanagement/setting/views/setting_screen.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // To maximize the size of cross-axis
          Container(width: double.infinity),
          Consumer<CounterProvider>(
            builder: (context, value, child) => Text(
              'Hello ${value.counter}',
              style: const TextStyle(fontSize: 28.0),
            ),
          ),
          const SizedBox(height: 30.0),
          Consumer<CounterProvider>(
            builder: (context, value, child) => ElevatedButton(
              onPressed: () {
                value.incrementCounter();
              },
              child: const Text('Plus'),
            ),
          ),
          Consumer<CounterProvider>(
            builder: (context, value, child) => ElevatedButton(
              onPressed: () {
                value.decrementCounter();
              },
              child: const Text('Minus'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) {
                return const ScreenSecond();
              });
              Navigator.push(context, route);
            },
            child: const Text('Next'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final route = MaterialPageRoute(builder: (_) {
            return const SettingScreen();
          });
          Navigator.push(context, route);
        },
        label: const Text('Setting Page'),
      ),
    );
  }
}
