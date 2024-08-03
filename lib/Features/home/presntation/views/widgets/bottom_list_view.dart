import 'package:bookly_app/Features/home/presntation/views/widgets/bottom_list_view_item.dart';
import 'package:flutter/material.dart';

class BottomListView extends StatelessWidget {
  const BottomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: BottomListViewItem(),
          );
        },
      ),
    );
  }
}
