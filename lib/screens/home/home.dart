import 'package:flutter/material.dart';
import 'package:job_finder/screens/home/widgets/home_app_bar.dart';
import 'package:job_finder/screens/home/widgets/job_list.dart';
import 'package:job_finder/screens/home/widgets/search_card.dart';
import 'package:job_finder/screens/home/widgets/tag_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                SearchCard(),
                TagList(),
                JobList(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(Icons.add,color: Colors.white),
        onPressed: (){},
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home, size: 20.0)),
            BottomNavigationBarItem(
                label: 'Case', icon: Icon(Icons.cases_outlined, size: 20.0)),
            BottomNavigationBarItem(label: '', icon: Text('')),
            BottomNavigationBarItem(
                label: 'Chat', icon: Icon(Icons.chat_outlined, size: 20.0)),
            BottomNavigationBarItem(
                label: 'Person', icon: Icon(Icons.person_outline, size: 20.0)),
          ],
        ),
      ),
    );
  }
}
