import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/favourite_button/provider/favourite_provider.dart';

class FavouriteTile extends StatelessWidget {
  const FavouriteTile({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<FavouriteProvider>(
      builder: (context, provider, child) {
        log("ListTile Built");
        return ListTile(
          title: Text("Item $index"),
          trailing: IconButton(
            icon: (provider.favouriteList.contains(index)) ? const Icon(Icons.favorite) : const Icon(Icons.favorite_outline),
            onPressed: () {
              if (provider.favouriteList.contains(index)) {
                provider.removeFavourite(index);
              } else {
                provider.addFavourite(index);
              }
            },
          ),
        );
      },
    );
  }
}
