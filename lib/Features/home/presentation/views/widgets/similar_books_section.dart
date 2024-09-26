import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:my_bookly/core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you are also like',
          style: Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimilarBookListView(),
      ],
    );
  }
}
