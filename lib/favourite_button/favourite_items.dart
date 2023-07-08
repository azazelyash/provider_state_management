import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/favourite_button/provider/favourite_provider.dart';

class FavouriteItemsPage extends StatefulWidget {
  const FavouriteItemsPage({super.key});

  @override
  State<FavouriteItemsPage> createState() => _FavouriteItemsPageState();
}

class _FavouriteItemsPageState extends State<FavouriteItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favourite Items"),
        backgroundColor: const Color(0xff126DCA),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<FavouriteProvider>(
          builder: (context, provider, child) {
            return (provider.favouriteList.isEmpty)
                ? const Center(child: Text("No Items Found"))
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Favourite Items",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Total: ${provider.favouriteList.length}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: ListView.builder(
                          itemCount: provider.favouriteList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Item No.: ${provider.favouriteList[index]}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
