import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_theme/ui/global/theme/app_themes.dart';
import 'package:switch_theme/ui/global/theme/bloc/theme_bloc.dart';
import 'package:switch_theme/ui/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ThemeBloc(ThemeState(themeData: appThemeData[AppTheme.GreenLight])),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      theme: state.themeData,
      title: "Material App",
      home: Home(),
    );
  }
}
