import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> _favouriteList = [];

  List<int> get favouriteList => _favouriteList;

  void addFavourite(int id) {
    _favouriteList.add(id);
    notifyListeners();
  }

  void removeFavourite(int id) {
    _favouriteList.remove(id);
    notifyListeners();
  }
}
