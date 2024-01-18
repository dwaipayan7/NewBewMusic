

import 'package:flutter/material.dart';
import 'package:musicapp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => ThemeProvider(),
      child:  const MyApp()),
      );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Pro',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage() ,

    );
  }
}
