import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/utils/app_assets.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ItemNavbar(
            isSelected: selectedIndex == 0,
            label: 'Home',
            assetIcon: selectedIndex == 0
                ? AppAssets.icon('icon_home_enable.png')
                : AppAssets.icon('icon_home_disable.png'),
            onTap: () => onTap(0),
          ),
          ItemNavbar(
            isSelected: selectedIndex == 1,
            label: 'Chat',
            assetIcon: selectedIndex == 1
                ? AppAssets.icon('icon_chat_enable.png')
                : AppAssets.icon('icon_chat_disable.png'),
            onTap: () => onTap(1),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 5),
          ItemNavbar(
            isSelected: selectedIndex == 2,
            label: 'Favorite',
            assetIcon: selectedIndex == 2
                ? AppAssets.icon('icon_favorite_enable.png')
                : AppAssets.icon('icon_favorite_disable.png'),
            onTap: () => onTap(2),
          ),
          ItemNavbar(
            isSelected: selectedIndex == 3,
            label: 'Profile',
            assetIcon: selectedIndex == 3
                ? AppAssets.icon('icon_profile_enable.png')
                : AppAssets.icon('icon_profile_disable.png'),
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}

class ItemNavbar extends StatelessWidget {
  const ItemNavbar({
    Key? key,
    required this.isSelected,
    required this.label,
    this.assetIcon = '',
    this.onTap,
    this.icon,
  }) : super(key: key);

  final bool isSelected;
  final String label;
  final String assetIcon;
  final Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSelected ? 22 : 20,
              height: isSelected ? 22 : 20,
              child: assetIcon.isNotEmpty
                  ? Image.asset(
                      assetIcon,
                      width: isSelected ? 16 : 15,
                      height: isSelected ? 16 : 15,
                    )
                  : Icon(
                      icon,
                      color: isSelected ? primaryColor : disabledColor,
                      size: isSelected ? 16 : 15,
                    ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: appTextTheme.labelSmall!.copyWith(
                color: isSelected ? primaryColor : disabledColor,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
