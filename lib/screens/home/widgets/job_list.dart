import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/home/widgets/job_detail.dart';
import 'package:job_finder/screens/home/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList =Job.jobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25.0),
      height: 160.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>GestureDetector(child: JobItem(jobList[index],showTime: true),onTap: (){
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (context){
              return JobDetail(jobList[index]);
                });
          },),
          separatorBuilder: (_,index)=>const SizedBox(width: 15.0),
          itemCount: jobList.length,
      ),

    );
  }
}
