import 'package:flutter/material.dart';
import 'package:themebuilder/snippets/TButtons.dart';

class MobileLayout extends StatefulWidget {
  @required
  final bool isDarkMode;
  MobileLayout({Key key, this.isDarkMode}) : super(key: key);

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TButtons(isDarkMode: widget.isDarkMode),
      ],
    );
  }
}
