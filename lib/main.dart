import 'package:app_noticias/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Portal de Notícias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          elevation: 4.0,
        ),
      ),
      home: const HomePage(),
    ),
  );
}
