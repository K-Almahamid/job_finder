import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  late final Job job;

  JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.0,
      padding: const EdgeInsets.all(25.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.3),
              height: 5.0,
              width: 60.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0),
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
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          job.isMark! ? Icons.bookmark : Icons.bookmark_outline,
                          color: job.isMark!
                              ? Theme.of(context).primaryColor
                              : Colors.black,
                        ),
                        const Icon(
                          Icons.more_horiz_outlined,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  job.title!,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(job.location!, Icons.location_on_outlined),
                    IconText(job.time!, Icons.access_time_outlined),
                  ],
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'Requirement',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                ...job.req!
                    .map((item) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                height: 5.0,
                                width: 5.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 290,
                                ),
                                child: Text(
                                  item,
                                  overflow:TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: const TextStyle(
                                    wordSpacing: 2.5,
                                    height: 1.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                    .toList(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30.0),
                  height: 45.0,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    child: const Text(
                      'Apply Now',
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
