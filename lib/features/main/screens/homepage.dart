import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restauran_app/features/main/data/data_restaurant.dart';
import 'package:restauran_app/helpers/widget/build_restaurant_item.dart';
import '../../../helpers/widget/app_bar.dart';
import '../../../helpers/widget/app_form_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(context, "Restaurant App", icon: Icon(Icons.menu)),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: AppFormField(
                controller: _searchController,
                onChange: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                  });
                },
              ),
            ),
            Expanded(
              child: FutureBuilder<String>(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/json/local_restaurant.json'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final jsonResult = json.decode(snapshot.data.toString());
                    final List<RestaurantElement> restaurants =
                        Restaurant.fromJson(jsonResult).restaurants;
                    List<RestaurantElement> searchRestauran =
                        restaurants.where((restaurant) {
                      return restaurant.name
                          .toLowerCase()
                          .contains(_searchQuery);
                    }).toList();
                    return ListView.builder(
                      itemCount: searchRestauran.length,
                      itemBuilder: (context, index) {
                        return buildArticleItem(
                            context, searchRestauran[index]);
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
