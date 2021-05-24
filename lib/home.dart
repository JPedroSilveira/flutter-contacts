import 'package:flutter/material.dart';
import './component/bottom_navigation.dart';
import './views/contact_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactListView(),
      bottomNavigationBar: BottomNavigation(selectedIndex: 1),
    );
  }
}