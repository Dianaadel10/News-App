import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/models/category_model.dart';
import 'package:flutter_application_12/lib/lib/widgets/category_news_list.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
           onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryNewsView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage(category.image)),
          ),
          height: 85,
          width: 150,
          child: Center(
            child: Text(
            category.categoryName,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
 
    );
  }
}
