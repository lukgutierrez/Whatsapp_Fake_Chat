
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:whatsapp_fake_conversations/Home_Page.dart';
import 'package:whatsapp_fake_conversations/database/Peoples.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PeopleAdapter());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        theme: ThemeData(primaryColor: Color(0xFFF105950)),
        debugShowCheckedModeBanner: false,
        title: 'BANK MACRO',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [const Locale('en'), const Locale('es')],
        home: HomePage());
  }
}