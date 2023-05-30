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
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 24,),
          //intro 
          Text(
            "Fresh grocery daily",
            style: TextStyle(color: Colors.green[600],
              fontWeight: FontWeight.bold
            ),
          ),
          const Spacer(),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
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
