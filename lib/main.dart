import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presntation/manger/bottom_books_cubit/botttom_books_cubit.dart';
import 'package:bookly_app/Features/home/presntation/manger/top_books_cubit/top_books_cubit.dart';
import 'package:bookly_app/Features/home/presntation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presntation/views/home_view.dart';
import 'package:bookly_app/Features/search/presntation/views/search_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TopBooksCubit(getIt.get<HomeRepoImpl>())..featchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => BotttomBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp(
        routes: {
          'BookDetailsView': (context) => const BookDetailsView(),
          'SearchView': (context) => const SearchView(),
        },
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        home: const HomeView(),
      ),
    );
  }
}
