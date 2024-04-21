import 'package:flutter/material.dart';
import 'package:restauran_app/features/main/data/data_restaurant.dart';
import 'package:restauran_app/utils/app_colors.dart';
import 'package:restauran_app/utils/app_text_style.dart';

class DetailPage extends StatelessWidget {
  final RestaurantElement restaurantElement;

  const DetailPage({super.key, required this.restaurantElement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryColor,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 14,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            right: 0,
            left: 0,
            child: Container(
              child: Image.network(
                restaurantElement.pictureId,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: AppColors.background),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          restaurantElement.name,
                          style: AppTextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ).style,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(width: 5),
                            Text(
                              restaurantElement.rating.toString(),
                              style: AppTextStyle(
                                fontSize: 18,
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.bold,
                              ).style,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 12,
                          color: Colors.black38,
                        ),
                        SizedBox(width: 2),
                        Text(
                          restaurantElement.city,
                          style: AppTextStyle(
                            fontSize: 12,
                            color: AppColors.textPrimary.withOpacity(
                              0.5,
                            ),
                          ).style,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      restaurantElement.description,
                      style: AppTextStyle(
                        fontSize: 11,
                        color: AppColors.textPrimary.withOpacity(0.5),
                      ).style,
                    ),
                    Divider(),
                    SizedBox(height: 5),
                    Text(
                      "Menus",
                      style: AppTextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)
                          .style,
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Food :",
                      style: AppTextStyle(fontSize: 11, color: Colors.black38)
                          .style,
                    ),
                    SizedBox(height: 2),
                    Wrap(
                      direction: Axis.horizontal,
                      children: List.generate(
                        restaurantElement.menus.foods.length,
                        (index) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  restaurantElement.menus.foods[index].name,
                                  style: AppTextStyle(
                                          fontSize: 11, color: Colors.black38)
                                      .style,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Drinks :",
                      style: AppTextStyle(fontSize: 11, color: Colors.black38)
                          .style,
                    ),
                    SizedBox(height: 2),
                    Wrap(
                      direction: Axis.horizontal,
                      children: List.generate(
                        restaurantElement.menus.drinks.length,
                        (index) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  restaurantElement.menus.drinks[index].name,
                                  style: AppTextStyle(
                                          fontSize: 11, color: Colors.black38)
                                      .style,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
