import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/setting/provider/setting_provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Screen'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SettingProvider>(
            builder: (context, value, child) => ElevatedButton(
              onPressed: () {
                value.toggleTheme();
              },
              child: const Text('Change Theme'),
            ),
          )
        ],
      ),
    );
  }
}
