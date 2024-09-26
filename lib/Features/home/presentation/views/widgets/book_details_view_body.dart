import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:my_bookly/core/utils/style.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          Text('The Jungle Book',
              style: Style.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Style.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const BooksAction(),
          const Expanded(
            child: SizedBox(height: 50),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'you are also like',
              style: Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 16),
          const SimilarBookListView(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
