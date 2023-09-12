import 'package:bybug/page/coming.dart';
import 'package:bybug/page/contact.dart';
import 'package:bybug/page/home.dart';
import 'package:bybug/page/new_order.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const HomePage(),
        "/new": (context) => const NewOrder(),
        "/contact": (context) => Contact(),
        "/comingsoon": (context) => const ComingSoon(pageName: ""),
      },
      onGenerateRoute: (settings) {
        if (settings.name!.startsWith('/comingsoon/')) {
          final pageName = settings.name!.split('/')[2];
          return MaterialPageRoute(
            builder: (context) => ComingSoon(pageName: pageName),
          );
        } 
        return null;
      },
      title: 'ByBug Web 2.0',
      home: const HomePage(),
    );
  }
}
