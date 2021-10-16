
import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagsList = ['All', '⚡ Popular', '⭐Featured'];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      height: 40.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: selected == index
                  ? Theme.of(context).primaryColor.withOpacity(0.2)
                  : Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: selected == index
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor.withOpacity(0.2),
              ),
            ),
            child: Text(tagsList[index]),
          ),
          onTap: () {
            setState(() {
              selected = index;
            });
          },
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15.0),
        itemCount: tagsList.length,
      ),
    );
  }
}
