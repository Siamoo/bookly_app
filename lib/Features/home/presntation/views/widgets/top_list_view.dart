import 'package:bookly_app/Features/home/presntation/views/widgets/top_list_view_item.dart';
import 'package:flutter/material.dart';

class TopListView extends StatelessWidget {
  const TopListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: TopListViewItem(),
          );
        },
      ),
    );
  }
}
