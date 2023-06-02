import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('lib/images/banana.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'Welcome to your favorite grocery store',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          //intro
          Text(
            "Fresh grocery daily",
            style: TextStyle(
                color: Colors.green[600], fontWeight: FontWeight.bold),
          ),
          const Spacer(),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Start Shopping",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

/*  BORDER BORDER BORDER BORDER BORDER BORDER BORDER */

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'home_page.dart';

// class IntroScreen extends StatelessWidget {
//   const IntroScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       body: SafeArea(
//         child: Column(
//           children: [
//             // big logo
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 100.0,
//                 right: 100.0,
//                 top: 120,
//                 bottom: 20,
//               ),
//               child: Image.asset('lib/images/avocado.png'),
//             ),

//             // we deliver groceries at your doorstep
//             Padding(
//               padding: const EdgeInsets.all(28.0),
//               child: Text(
//                 'We deliver groceries at your doorstep',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.notoSerif(
//                     fontSize: 36, fontWeight: FontWeight.bold),
//               ),
//             ),

//             // groceree gives you fresh vegetables and fruits
//             Text(
//               'Fresh items everyday',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey[700],
//               ),
//             ),

//             const SizedBox(height: 24),

//             const Spacer(),

//             // get started button
//             GestureDetector(
//               onTap: () => Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return HomePage();
//                   },
//                 ),
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(24),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   color: const Color.fromARGB(255, 112, 91, 222),
//                 ),
//                 child: const Text(
//                   "Get Started",
//                   style: TextStyle(
//                     color: Colors.white,
//                     // fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),

//             const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }
