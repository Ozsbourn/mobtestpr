import 'package:fls/components/my_drawer_item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //drawer header
          DrawerHeader(child: Icon(
            Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          )),

          // shop page
          MyDrawerItem(
            text: "Shop page", 
            icon: Icons.shopping_bag, 
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/shop_page");
            },
          ),

          // animation page
          MyDrawerItem(
            text: "Animation page", 
            icon: Icons.animation, 
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/animation_page");
            },
          )
        ],
      ),
    );
  }
}