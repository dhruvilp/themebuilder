import 'package:flutter/material.dart';
import 'package:themebuilder/styles.dart';

import 'layouts/MobileLayout.dart';
import 'layouts/WebLayout.dart';
import 'pages/PageNotFound.dart';
import 'widgets/TAppBar.dart';
import 'widgets/TDownloadThemesButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.from(
      //   colorScheme: ColorScheme.light(),
      // ),
      theme: kLightTheme,
      // darkTheme: kDarkTheme,
      home: ResponsiveWebPage(),
      onUnknownRoute: (RouteSettings setting) {
        var unknownRoute = setting.name;
        return MaterialPageRoute(
          builder: (context) => PageNotFound(
            title: unknownRoute,
          ),
        );
      },
    );
  }
}

class ResponsiveLayoutBuilder extends StatelessWidget {
  @required
  final bool isDarkMode;

  const ResponsiveLayoutBuilder({Key key, this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return (constraints.maxWidth < 768)
            ? MobileLayout(isDarkMode: isDarkMode)
            : WebLayout(isDarkMode: isDarkMode);
      },
    );
  }
}

class ResponsiveWebPage extends StatelessWidget {
  ResponsiveWebPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ResponsiveLayoutBuilder(isDarkMode: false),
            ),
          ),
          Expanded(
            child: Container(
              color: charcoalDark,
              height: MediaQuery.of(context).size.height,
              child: ResponsiveLayoutBuilder(isDarkMode: true),
            ),
          ),
        ],
      ),
      floatingActionButton: TDownloadThemesButton(),
    );
  }
}
