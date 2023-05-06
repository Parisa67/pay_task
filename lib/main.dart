import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Feature/Feature_pay/Peresentation/Screens/pay_screen.dart';
import 'Feature/Feature_picture/Peresentation/Screens/picture_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('fa', ''),
      supportedLocales: const [
        Locale('fa', ''), // English
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class LocalJsonLocalization {}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1, //optional, starts from 0, select the tab by default
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("آیریا"),
              bottom: const TabBar(tabs: [
                Tab(
                  text: "تصویر",
                ),
                Tab(
                  text: "پرداخت",
                ),
              ]),
            ),
            body: const TabBarView(children: [
              PictureScreen(),
              PayScreen(),
            ])));
  }
}
