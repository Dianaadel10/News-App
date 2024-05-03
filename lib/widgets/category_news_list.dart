import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/widgets/New_List_View_builder.dart';


class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              categories: category,
            )
          ],
        ),
      ),
    );
  }
}