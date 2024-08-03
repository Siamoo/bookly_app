import 'package:bookly_app/Features/home/presntation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/details_button.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/details_item.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/details_view_bottom_list_view.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 20),
      child: Column(
        children: [
          AppBarDetails(),
          SizedBox(
            height: 10,
          ),
          DetailsItem(),
          DetailsButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'You can also like',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          DetailsViewBottomListView()
        ],
      ),
    );
  }
}
