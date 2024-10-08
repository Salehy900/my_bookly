import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:my_bookly/core/utils/style.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
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
      ],
    );
  }
}
