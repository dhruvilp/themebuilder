import 'package:flutter/material.dart';

enum PreDefColorScheme { light, dark }

class TEditPanel extends StatefulWidget {
  @override
  _TEditPanelState createState() => _TEditPanelState();
}

class _TEditPanelState extends State<TEditPanel> {
  var _isButtonPressed = false;
  PreDefColorScheme _theme = PreDefColorScheme.light;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ActionChip(
              onPressed: () {
                setState(() {
                  _isButtonPressed = !_isButtonPressed;
                });
              },
              avatar: Icon(Icons.code, color: Colors.white),
              label: Text('Edit'),
              labelStyle: TextStyle(color: Colors.white),
              backgroundColor: Colors.grey.shade800,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: AnimatedContainer(
            padding: const EdgeInsets.all(10.0),
            duration: Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: MediaQuery.of(context).size.width,
            height: _isButtonPressed ? 200.0 : 0.0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RadioListTile<PreDefColorScheme>(
                    title: const Text('ColorScheme.light()'),
                    value: PreDefColorScheme.light,
                    groupValue: _theme,
                    onChanged: (PreDefColorScheme value) {
                      setState(() {
                        _theme = value;
                      });
                    },
                  ),
                  RadioListTile<PreDefColorScheme>(
                    title: const Text('ColorScheme.dark()'),
                    value: PreDefColorScheme.dark,
                    groupValue: _theme,
                    onChanged: (PreDefColorScheme value) {
                      setState(() {
                        _theme = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
