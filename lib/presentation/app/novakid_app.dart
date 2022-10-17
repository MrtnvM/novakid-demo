import 'package:flutter/material.dart';
import 'package:novakid/presentation/main/main_page.dart';

class NovakidApp extends StatefulWidget {
  const NovakidApp({super.key});

  @override
  State<NovakidApp> createState() => _NovakidAppState();
}

class _NovakidAppState extends State<NovakidApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novakid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
