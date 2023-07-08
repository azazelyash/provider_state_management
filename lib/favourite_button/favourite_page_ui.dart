import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/favourite_button/components/favouriteTile.dart';
import 'package:provider_practice/favourite_button/favourite_items.dart';
import 'package:provider_practice/favourite_button/provider/favourite_provider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const FavouriteItemsPage(),
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return FavouriteTile(
            index: index,
          );
        },
      ),
    );
  }
}
