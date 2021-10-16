import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('assets/icons/search.png'),
                  width: 20.0,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            height: 50.0,
            width: 50.0,
            padding: const EdgeInsets.all(13.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Image.asset('assets/icons/filter.png'),
          )
        ],
      ),
    );
  }
}
