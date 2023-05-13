import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/ui/chat/chat_view.dart';
import 'package:shamo_provider/ui/favorite/favorite_view.dart';
import 'package:shamo_provider/ui/home/home_view.dart';
import 'package:shamo_provider/ui/profile/profile_view.dart';
import 'package:shamo_provider/utils/app_assets.dart';
import 'package:shamo_provider/widgets/others/custom_bottom_navbar.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  static const routeName = '/main';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _bottomNavIndex = 0;

  final List<Widget> _listNavBarMenu = [
    const HomeView(),
    const ChatView(),
    const FavoriteView(),
    const ProfileView(),
  ];

  void _onBottomNavBarTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(AppAssets.icon('icon_cart.png'), width: 20),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: blackColor3,
        elevation: 10,
        notchMargin: 10,
        child: CustomBottomNavBar(
          selectedIndex: _bottomNavIndex,
          onTap: _onBottomNavBarTapped,
        ),
      ),
      body: _listNavBarMenu[_bottomNavIndex],
    );
  }
}
