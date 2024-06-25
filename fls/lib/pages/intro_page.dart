import 'package:flutter/material.dart';

import '../components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column (
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 20, 4, 4),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                  verticalDirection: VerticalDirection.up,

                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ],
                ),
             ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Push the button",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(height: 25,),

                MyButton(
                  onTap : () => Navigator.pushNamed(context, '/shop_page'),
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}