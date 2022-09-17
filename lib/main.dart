import 'package:flutter/material.dart';
import 'package:proyek1_restaurantapp/pages/home.dart';
import 'package:proyek1_restaurantapp/theme/text_theme.dart';

import 'theme/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App V1',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: Colors.black,
            ),
        textTheme: textTheme,
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          elevation: 0.0,
        ),
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
      },
      home: const Home(),
    );
  }
}
