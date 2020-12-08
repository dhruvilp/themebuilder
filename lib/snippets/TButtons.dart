import 'package:flutter/material.dart';
import 'package:themebuilder/styles.dart';

class TButtons extends StatefulWidget {
  @required
  final bool isDarkMode;

  const TButtons({Key key, this.isDarkMode}) : super(key: key);

  @override
  _TButtonsState createState() => _TButtonsState();
}

class _TButtonsState extends State<TButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Theme(
            data: widget.isDarkMode ? kDarkTheme : kLightTheme,
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Text Button'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Elevated Button'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Outlined Button'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
