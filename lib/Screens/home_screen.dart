import 'package:flutter/material.dart';
import 'package:new_project/widgets/campaign_packet.dart';
import 'package:new_project/widgets/list_view.dart';
import 'package:new_project/widgets/listview_builder.dart';
import 'package:new_project/widgets/packets.dart';

import '../utils/app_style.dart';
import '../utils/string_manager.dart';
import '../utils/utils.dart';
import 'file_picker.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 3: Bookmark',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          StringManager.helloWelcomeToOurPage,
          style: TextStyle(
              color: AppStyle.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const MyFliePickerScreen()));
            },
            icon: const Icon(
              Icons.notifications,
              color: AppStyle.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        // margin: EdgeInsets.only(left: 16, right: 16),
        decoration: const BoxDecoration(
          // color: Colors.amber,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(300),
              bottomRight: Radius.circular(200)),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppStyle.orange,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Bookmark',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Bookmark',
              backgroundColor: Colors.red,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: Utils.getWidth(context) / 1.1,
                height: Utils.getHight(context) / 10,
                child: const Card(
                  elevation: 5,
                  // color: AppStyle.black,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: StringManager.searchFoodOrRestaurentHere,
                      ),
                    ),
                  ),
                ),
              ),
              // const MyImageSlider(),
              const MyListView(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringManager.categories,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      StringManager.viewAll,
                      style: TextStyle(
                          color: AppStyle.red,
                          decoration: TextDecoration.underline,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              MylistViewBuilder(),
              // MyIconText(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringManager.popularFoodNearby,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      StringManager.viewAll,
                      style: TextStyle(
                          color: AppStyle.red,
                          decoration: TextDecoration.underline,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  children: const [
                    MyPackets(),
                    MyPackets(),
                    MyPackets(),
                    MyPackets(),
                    MyPackets(),
                    MyPackets(),
                    MyPackets(),
                    MyPackets(),
                  ],
                ),
              ),
              SizedBox(
                width: Utils.getWidth(context) / 1.1,
                height: Utils.getHight(context) / 4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  children: const [
                    MyCompaignPacket(),
                    MyCompaignPacket(),
                    MyCompaignPacket(),
                    MyCompaignPacket(),
                    MyCompaignPacket(),
                  ],
                ),
              ),

              //  MyCompaignPacket(),
            ],
          ),
        ),
      ),
    );
  }
}
