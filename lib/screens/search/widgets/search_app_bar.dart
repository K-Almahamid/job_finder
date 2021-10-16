import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25.0,
        right: 25.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0, right: 10.0),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children:  [
                    const Icon(
                      Icons.notifications_none_outlined,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              const Icon(Icons.more_horiz_outlined)
            ],
          )
        ],
      ),
    );
  }
}
