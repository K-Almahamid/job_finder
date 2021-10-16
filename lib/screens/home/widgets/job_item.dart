import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  late final Job job;
   late final bool? showTime;

  JobItem(this.job, {this.showTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.0,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(job.logoUrl!),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    job.company!,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                job.isMark! ? Icons.bookmark : Icons.bookmark_outline,
                color: job.isMark!
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Text(
            job.title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 15.0),
            IconText(job.location!,Icons.location_on_outlined),
        //  if(showTime! )IconText(job.time!,Icons.access_time_outlined),
        ],
      ),
    );
  }
}
