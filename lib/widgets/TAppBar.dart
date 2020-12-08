import 'package:flutter/material.dart';
import 'package:themebuilder/styles.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Flutter Theme Builder',
        style: Theme.of(context).textTheme.subtitle1.copyWith(color: white),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
