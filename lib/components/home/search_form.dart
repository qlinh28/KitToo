import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.search,
              color: Colors.grey.shade600,
            ),
          ),
          hintText: "Search anything",
          hintStyle: TextStyle(color: Colors.grey.shade600),
          border: InputBorder.none,
          suffixIcon: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 40),
                backgroundColor: Colors.black, // background
                foregroundColor: Colors.white, // foreground
              ),
              child: const Icon(Icons.filter_list))),
    ));
  }
}
