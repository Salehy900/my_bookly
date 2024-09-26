import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(height: 50),
                ),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
