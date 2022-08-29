import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/home/provider/provider.dart';
import 'package:provider_statemanagement/home/views/screen1.dart';
import 'package:provider_statemanagement/setting/provider/setting_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingProvider(),
        ),
      ],
      builder: (context, child) {
        final provider = Provider.of<SettingProvider>(context);
        return MaterialApp(
          theme: provider.theme,
          home: const ScreenFirst(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
