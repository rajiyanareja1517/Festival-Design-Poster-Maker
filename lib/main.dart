import 'package:festival_poster_maker/screens/detail_page.dart';
import 'package:festival_poster_maker/screens/edit_page.dart';
import 'package:festival_poster_maker/screens/favourite_page.dart';
import 'package:festival_poster_maker/screens/homepage.dart';
import 'package:festival_poster_maker/screens/more_page.dart';
import 'package:festival_poster_maker/screens/splash.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(fontFamily: 'marc'),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => splashscreen(),
          'homepage': (context) => home_Page(),
          'detail_page': (context) => detail_page(),
          'favourite_page': (context) => favourite_Page(),
          'edit_page': (context) => EditPage(),
          'more_page': (context) => morePage(),
        }),
  );
}
