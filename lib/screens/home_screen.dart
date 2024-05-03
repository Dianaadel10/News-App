import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/widgets/New_List_View_builder.dart';
import 'package:flutter_application_12/lib/lib/widgets/categoris_list_view.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(),
              const Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Cloud',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 232, 29),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 18,
                ),
              ),
              NewsListViewBuilder(categories: 'general')
            ])));
  }
}
