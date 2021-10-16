import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/home/widgets/job_detail.dart';
import 'package:job_finder/screens/home/widgets/job_item.dart';

class SearchList extends StatelessWidget {
  final jobList = Job.jobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 25.0),
        itemBuilder: (context, index) =>
             GestureDetector(
          child: JobItem(jobList[index],showTime: true),
          onTap: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return JobDetail(jobList[index]);
                },
            );
          },
        ),
        separatorBuilder: (_, index) => const SizedBox(height: 20.0),
        itemCount: jobList.length,
      ),
    );
  }
}
