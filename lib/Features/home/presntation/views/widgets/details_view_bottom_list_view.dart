import 'package:bookly_app/Features/home/presntation/views/widgets/details_view_bottom_list_view_item.dart';
import 'package:flutter/material.dart';

class DetailsViewBottomListView extends StatelessWidget {
  const DetailsViewBottomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: DetailsViewBottomListViewItem(),
          );
        },
      ),
    );
  }
}
