import "package:fls/components/my_drawer.dart";
import "package:fls/components/my_product_tile.dart";
import "package:fls/models/shop.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          const SizedBox(height: 25),

          Center(
            child: Text(
              "Pick from a selected list of products", 
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),
          ),

          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                // get active element, like a 'item' in ReactJS: array.map(item => (<div>...</div>))
                final product = products[index];

                // return UI for separated elements
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
