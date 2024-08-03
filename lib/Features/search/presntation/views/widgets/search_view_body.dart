import 'package:bookly_app/Features/search/presntation/views/widgets/search_list_view.dart';
import 'package:bookly_app/Features/search/presntation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatefulWidget {
  @override
  _SearchViewBodyState createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController _searchController = TextEditingController();

  // List<String> _allItems = [
  //   'Apple',
  //   'Banana',
  //   'Cherry',
  //   'Date',
  //   'Elderberry',
  //   'Fig',
  //   'Grape',
  //   'Honeydew',
  // ];

  // List<String> _filteredItems = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _filteredItems = _allItems;
  //   _searchController.addListener(() {
  //     _filterItems();
  //   });
  // }

  // void _filterItems() {
  //   setState(() {
  //     _filteredItems = _allItems
  //         .where((item) =>
  //             item.toLowerCase().contains(_searchController.text.toLowerCase()))
  //         .toList();
  //   });
  // }

  // @override
  // void dispose() {
  //   _searchController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(searchController: _searchController),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                'Search Result',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SearchListView(),
          ],
        ),
      ),
    );
  }
}
