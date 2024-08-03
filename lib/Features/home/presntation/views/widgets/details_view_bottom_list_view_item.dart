import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class DetailsViewBottomListViewItem extends StatelessWidget {
  const DetailsViewBottomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 90,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 241, 125, 0)),
          borderRadius: BorderRadius.circular(16)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          kImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
