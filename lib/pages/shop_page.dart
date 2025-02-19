import 'package:trendstep_mobile_appication/components/my_drawer.dart';
import 'package:trendstep_mobile_appication/components/shoe_tile.dart';
import 'package:trendstep_mobile_appication/models/shoe.dart';
import 'package:trendstep_mobile_appication/pages/cart_page.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 232, 232),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: const Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Every Your Shoe Needs... From One Home..!',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Color.fromARGB(255, 129, 129, 129),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(itemBuilder: (context, index) {
                       // Shoe shoe = Shoe(name: "Nike", imagePath: imagePath, description: description, price: price);
                        //return ShoeTile();
                      },),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
