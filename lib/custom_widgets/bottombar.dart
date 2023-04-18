import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedIndex,
          onTap: _onItemTapped,
         items: [
            BottomNavigationBarItem(
               label: "",
                icon: Image.asset("assets/images/Menu.png")),
            BottomNavigationBarItem(
                label: "",
                icon: Image.asset("assets/images/Menu.png")),
            BottomNavigationBarItem(
                label: "",
                icon: Image.asset("assets/images/Menu.png")),
         ],
       ),

    );
  }
}
