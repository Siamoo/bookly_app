import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class BottomListViewItem extends StatelessWidget {
  const BottomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'BookDetailsView');
      },
      child: Row(
        children: [
          Container(
            height: 125,
            width: 80,
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
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'The Jungle Book',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                'Bestdjh eller',
                style: TextStyle(fontSize: 12, color: Colors.white60),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                height: 30,
                child: const Row(
                  children: [
                    Text(
                      '19.99\$',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                    ),
                    Spacer(),
                    Text(
                      '⭐ 4.8',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      '(2390)',
                      style: TextStyle(fontSize: 12, color: Colors.white38),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
