import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/selection_button/components/cabin_widget.dart';
import 'package:provider_practice/selection_button/confirm_selection_page.dart';
import 'package:provider_practice/selection_button/model/seat.dart';
import 'package:provider_practice/selection_button/provider/selection_button_provider.dart';

class SelectionButtonPage extends StatefulWidget {
  const SelectionButtonPage({super.key});

  @override
  State<SelectionButtonPage> createState() => _SelectionButtonPageState();
}

class _SelectionButtonPageState extends State<SelectionButtonPage> {
  String? searchText;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Seat> seats = Provider.of<SelectionButtonProvider>(context, listen: false).selectedSeats;

    for (var x in seats) {
      log("--------------------");
      log(x.seatIndex.toString());
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("SelectionButtonPage built");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff126DCA),
        title: const Text("Select Your Seats"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) => const ConfirmSelectionPage(),
              ),
            );
          },
          backgroundColor: const Color(0xff126DCA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          label: const Text("Confirm Selection"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextFormField(
              controller: searchController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    searchController.clear();
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                    FocusScope.of(context).unfocus();
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Builder(
                    builder: (context) => CabinWidget(
                      index: index,
                      searchBarText: searchController.text,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
