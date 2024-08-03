import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Logo.png'),
          const SizedBox(
            height: 15,
          ),
          const Text('Reed Free Books'),
        ],
      ),
    );
  }
}

// Padding(
//       padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const AppBarS(),
//           const SizedBox(
//             height: 20,
//           ),
//           SizedBox(
//             height: 200,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (BuildContext context, int index) {
//                 return const Padding(
//                   padding: EdgeInsets.only(right: 20),
//                   child: ItemTop(),
//                 );
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const Text(
//             'Best Seller',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemBuilder: (BuildContext context, int index) {
//                 return const Padding(
//                   padding: EdgeInsets.only(bottom: 20),
//                   child: ItemBottom(),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
