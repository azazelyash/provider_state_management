import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_practice/favourite_button/favourite_page_ui.dart';
// import 'package:provider_practice/favourite_button/provider/favourite_provider.dart';
// import 'package:provider_practice/homepage.dart';
import 'package:provider_practice/selection_button/provider/selection_button_provider.dart';
import 'package:provider_practice/selection_button/selection_button_ui.dart';
// import 'slider_screen/provider/slider_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectionButtonProvider()),
        // ChangeNotifierProvider(create: (_) => SliderProvider()),
        // ChangeNotifierProvider(create: (_) => FavouriteProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SelectionButtonPage(),
      ),
    );
  }
}
