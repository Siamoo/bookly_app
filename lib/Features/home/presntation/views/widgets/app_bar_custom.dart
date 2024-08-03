import 'package:flutter/material.dart';

class AppBarCumstom extends StatelessWidget {
  const AppBarCumstom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Logo.png',
          width: 80,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'SearchView');
            },
            icon: const Icon(
              Icons.search,
              size: 25,
            ))
      ],
    );
  }
}
