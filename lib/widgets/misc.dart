// import 'package:flutter/material.dart';

// enum PreDefColorScheme { light, dark }

// class TButtons extends StatefulWidget {
//   @override
//   _TButtonsState createState() => _TButtonsState();
// }

// class _TButtonsState extends State<TButtons> {
//   var _isButtonPressed = false;
//   PreDefColorScheme _theme = PreDefColorScheme.light;

//   @override
//   Widget build(BuildContext context) {
//     print(_theme);
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Theme(
//             data: ThemeData.from(
//               colorScheme: _theme == PreDefColorScheme.light
//                   ? ColorScheme.light()
//                   : ColorScheme.dark(),
//             ),
//             child: AnimatedContainer(
//               width: MediaQuery.of(context).size.width,
//               duration: Duration(milliseconds: 300),
//               color: _theme == PreDefColorScheme.light
//                   ? ColorScheme.light().background
//                   : ColorScheme.dark().background,
//               padding: EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: TextButton(
//                         onPressed: () {},
//                         child: Text('Text Button'),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Elevated Button'),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: OutlinedButton(
//                         onPressed: () {},
//                         child: Text('Outlined Button'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               child: ActionChip(
//                 onPressed: () {
//                   setState(() {
//                     _isButtonPressed = !_isButtonPressed;
//                   });
//                 },
//                 avatar: Icon(Icons.code, color: Colors.white),
//                 label: Text('Edit'),
//                 labelStyle: TextStyle(color: Colors.white),
//                 backgroundColor: Colors.grey.shade800,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             child: AnimatedContainer(
//               padding: const EdgeInsets.all(10.0),
//               duration: Duration(milliseconds: 300),
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey.shade50,
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               width: MediaQuery.of(context).size.width,
//               height: _isButtonPressed ? 200.0 : 0.0,
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     RadioListTile<PreDefColorScheme>(
//                       title: const Text('ColorScheme.light()'),
//                       value: PreDefColorScheme.light,
//                       groupValue: _theme,
//                       onChanged: (PreDefColorScheme value) {
//                         setState(() {
//                           _theme = value;
//                         });
//                       },
//                     ),
//                     RadioListTile<PreDefColorScheme>(
//                       title: const Text('ColorScheme.dark()'),
//                       value: PreDefColorScheme.dark,
//                       groupValue: _theme,
//                       onChanged: (PreDefColorScheme value) {
//                         setState(() {
//                           _theme = value;
//                         });
//                       },
//                     ),
//                     RadioListTile<PreDefColorScheme>(
//                       title: const Text('ColorScheme.light()'),
//                       value: PreDefColorScheme.light,
//                       groupValue: _theme,
//                       onChanged: (PreDefColorScheme value) {
//                         setState(() {
//                           _theme = value;
//                         });
//                       },
//                     ),
//                     RadioListTile<PreDefColorScheme>(
//                       title: const Text('ColorScheme.dark()'),
//                       value: PreDefColorScheme.dark,
//                       groupValue: _theme,
//                       onChanged: (PreDefColorScheme value) {
//                         setState(() {
//                           _theme = value;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
