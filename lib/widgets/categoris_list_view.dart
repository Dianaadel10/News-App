import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/models/category_model.dart';
import 'package:flutter_application_12/lib/lib/widgets/category_card.dart';


class CategoriesListView extends StatelessWidget {
    const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'business', image: 'assets/buss.jpg'),
    CategoryModel(
        categoryName: 'entertainment', image: 'assets/entertaiment.jpg'),
    CategoryModel(categoryName: 'general', image: 'assets/genral.jpg'),
    CategoryModel(categoryName: 'health', image: 'assets/health.jpg'),
    CategoryModel(categoryName: 'science', image: 'assets/science.jpg'),
    CategoryModel(categoryName: 'sports', image: 'assets/sports.jpg'),
    CategoryModel(categoryName: 'technology', image: 'assets/tech.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
