import 'package:flutter/material.dart';
import 'package:provider_practice/selection_button/components/custom_clip_path.dart';
import 'package:provider_practice/selection_button/components/seat_widget.dart';

class CabinWidget extends StatelessWidget {
  const CabinWidget({
    super.key,
    required this.index,
    this.searchBarText,
  });

  final int index;
  final String? searchBarText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperFromTop(),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xff80CBFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          SeatWidget(
                            searchBarText: searchBarText,
                            seatIndex: 1 + index * 8,
                            seatType: "Upper",
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            searchBarText: searchBarText,
                            seatIndex: 2 + index * 8,
                            seatType: "Middle",
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            searchBarText: searchBarText,
                            seatIndex: 3 + index * 8,
                            seatType: "Lower",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperFromTop(),
                      child: Container(
                        height: 60,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xff80CBFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: SeatWidget(
                        searchBarText: searchBarText,
                        seatIndex: 7 + index * 8,
                        seatType: "Side Up",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperFromBottom(),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xff80CBFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          SeatWidget(
                            searchBarText: searchBarText,
                            seatIndex: 6 + index * 8,
                            seatType: "Upper",
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            searchBarText: searchBarText,
                            seatIndex: 5 + index * 8,
                            seatType: "Middle",
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            searchBarText: searchBarText,
                            seatIndex: 4 + index * 8,
                            seatType: "Lower",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperFromBottom(),
                      child: Container(
                        height: 60,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xff80CBFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: SeatWidget(
                        searchBarText: searchBarText,
                        seatIndex: 8 + index * 8,
                        seatType: "Side Low",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 2),
      ],
    );
  }
}
