import 'package:bookly_app/Features/home/presntation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presntation/views/home_view.dart';
import 'package:bookly_app/Features/search/presntation/views/search_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'BookDetailsView': (context) => const BookDetailsView(),
        'SearchView': (context) => const SearchView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const HomeView(),
    );
  }
}
