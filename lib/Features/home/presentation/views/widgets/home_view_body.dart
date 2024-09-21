import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:my_bookly/core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            'Best Seller',
            style: Style.textStyle18,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
