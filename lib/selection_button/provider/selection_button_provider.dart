import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider_practice/selection_button/model/seat.dart';

class SelectionButtonProvider with ChangeNotifier {
  List<Seat> _selectedSeats = [];

  List<Seat> get selectedSeats => _selectedSeats;

  void addSeat(Seat seat) {
    _selectedSeats.add(seat);
    log("${seat.seatIndex} added");
    notifyListeners();
  }

  void removeSeat(Seat seat) {
    _selectedSeats.remove(seat);
    log("${seat.seatIndex} removed");
    notifyListeners();
  }

  bool isSeatSelected(Seat seat) {
    return _selectedSeats.contains(seat);
  }
}
