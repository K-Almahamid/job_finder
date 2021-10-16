import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {
  @override
  _SearchOptionState createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'Development': true,
    'Business': false,
    'Data': false,
    'Design': false,
    'Operation': false,
  };

  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      height: 25.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              var res = optionMap[keys[index]] ?? false;
              optionMap[keys[index]] = !res;
            });
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: optionMap[keys[index]] != null &&
                        optionMap[keys[index]] == true
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                ),),
            child: Row(
              children: [
                Text(
                  keys[index],
                  style: TextStyle(
                    fontSize: 12.0,
                    color: optionMap[keys[index]] != null &&
                            optionMap[keys[index]] == true
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                if (optionMap[keys[index]] != null &&
                    optionMap[keys[index]] == true)
                  Row(
                    children: const [
                      SizedBox(width: 20.0),
                      Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 15.0,
                      )
                    ],
                  )
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15.0),
        itemCount: optionMap.length,
      ),
    );
  }
}
