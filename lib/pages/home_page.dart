import 'package:flutter/material.dart';
import 'package:groceryapp/components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),

          // Welcoming message
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Welcome"),
          ),

          // Start ordering msg
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Start ordering your grocery", // ADD FONT
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // NEW DIVIDER
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),

          //fresh items + grid
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh items",
              style: TextStyle(fontSize: 16),
            ),
          ),
          // line divider
          const Divider(
            thickness: 4,
            color: Colors.black,
          ),

          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GroceryItemTile();
            },
          ))
        ],
      )),
    );
  }
}
