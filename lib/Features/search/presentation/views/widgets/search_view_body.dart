import 'package:flutter/material.dart';
import 'package:my_bookly/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:my_bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:my_bookly/core/utils/style.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 16),
          Text(
            'Search Result',
            style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
