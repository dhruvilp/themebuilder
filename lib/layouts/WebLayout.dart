import 'package:flutter/material.dart';
import 'package:themebuilder/snippets/TButtons.dart';

class WebLayout extends StatefulWidget {
  @required
  final bool isDarkMode;
  WebLayout({Key key, this.isDarkMode}) : super(key: key);

  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TButtons(isDarkMode: widget.isDarkMode),
      ],
    );
  }
}
