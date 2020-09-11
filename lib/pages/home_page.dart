import 'package:e_commerce/ui/dashboard_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;

  final iconList = [
    TabItemIcon(
        iconData: Icons.home,
        startColor: Colors.red,
        endColor: Colors.green,
        curveColor: Colors.grey.shade300),
    TabItemIcon(iconData: FontAwesome.cogs, curveColor: Colors.orange),
    TabItemIcon(iconData: Icons.add_shopping_cart, curveColor: Colors.green),
    TabItemIcon(iconData: FontAwesome.bell),
    TabItemIcon(iconData: FontAwesome.user_circle),
  ];
  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: iconList.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "E-Commerce",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Dashboard(),
            new Container(
              color: Colors.orange,
            ),
            new Container(
              color: Colors.lightGreen,
            ),
            new Container(
              color: Colors.red,
            ),
            new Container(
              color: Colors.blueAccent,
            ),
          ],
        ),
        bottomNavigationBar: JumpingTabBar(
          onChangeTab: onChangeTab,
          circleGradient: LinearGradient(
            colors: [
              Colors.redAccent,
              Colors.deepPurple,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          items: iconList,
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
