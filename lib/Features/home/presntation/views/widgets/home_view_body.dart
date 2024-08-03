import 'package:bookly_app/Features/home/presntation/views/widgets/app_bar_custom.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/bottom_list_view.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/top_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 20),
                child: AppBarCumstom(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TopListView(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, bottom: 20, top: 40),
                child: Text(
                  'Best Seller',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BottomListView(),
        )
      ],
    );
  }
}
