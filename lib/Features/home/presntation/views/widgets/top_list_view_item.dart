import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class TopListViewItem extends StatelessWidget {
  const TopListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'BookDetailsView');
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 241, 125, 0)),
                borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                kImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black38,
              ),
              child: const Icon(
                Icons.touch_app,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
