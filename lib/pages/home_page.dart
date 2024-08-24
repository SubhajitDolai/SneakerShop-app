import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/components/bottom_nav_bar.dart';
import 'package:sneaker_shop_app/pages/cart_page.dart';
import 'package:sneaker_shop_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the botton bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appbar
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),

      // drawer
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset(
                    'lib/images/nike.png',
                    width: 180,
                    color: Colors.white,
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),

                // list tiles
                // home
                GestureDetector(
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);
                    // go to home page
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // about
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/aboutpage');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // logout
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/intropage');
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // body
      body: _pages[_selectedIndex],

      // botton navbar
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
