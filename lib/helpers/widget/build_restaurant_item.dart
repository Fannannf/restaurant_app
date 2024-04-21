import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restauran_app/features/main/data/data_restaurant.dart';
import 'package:restauran_app/utils/app_colors.dart';
import 'package:restauran_app/utils/app_text_style.dart';

Widget buildArticleItem(BuildContext context, RestaurantElement restaurant) {
  return GestureDetector(
    onTap: () {
      GoRouter.of(context).go('/detail', extra: restaurant);
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                restaurant.pictureId,
                fit: BoxFit.cover, // Membuat gambar sesuai dengan container
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  restaurant.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      .style,
                ),
                Text(
                  restaurant.description,
                  style: AppTextStyle(
                    fontSize: 11,
                    color: Colors.black38,
                  ).style,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.primaryColor,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      restaurant.rating.toString(),
                      style: AppTextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)
                          .style,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
