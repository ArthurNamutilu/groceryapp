// import 'package:flutter/material.dart';
// import 'package:groceryapp/model/cart_model.dart';
// import 'package:provider/provider.dart';
// import 'pages/intro_screen.dart';

// void main() => runApp(
//       const MyApp(),
//     );

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // wrapping entire app with change notifier provider and give it cart model & child give it our app
//     return ChangeNotifierProvider(
//         create: (context) => CartModel(),
//         child: const MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: IntroPage(),
//         ));
//   }
// }

/*  BORDER BORDER BORDER BORDER BORDER BORDER BORDER */
import 'package:flutter/material.dart';
import 'package:groceryapp/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'pages/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // using imported provider
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}
