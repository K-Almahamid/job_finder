// class Job {
//   final int id;
//   final String companyName;
//   final String imgUrl;
//   final String position;
//   final String location;
//   final String type;
//   final List<String> responsibilities;
//   final List<String> qualifications;
//
//   Job({
//     this.id,
//     this.companyName,
//     this.imgUrl,
//     this.position,
//     this.location,
//     this.type,
//     this.responsibilities,
//     this.qualifications,
//   });
// }
class Job {
  String? company;
  String? logoUrl;
  bool? isMark;
  String? title;
  String? location;
  String? time;
  List<String>? req;

  Job(
    this.company,
    this.logoUrl,
    this.isMark,
    this.title,
    this.location,
    this.time,
    this.req,
  );

  static List<Job> jobs() {
    return [
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        true,
        'Senior Software Engineer1',
        'Singapore, Permanent1',
        'Full Time',
        [
          'Work effectively as a member of self-organized agile team that builds, owns and runs the service',
          'Contribute to all aspects of service development including front-end, back-end, devops and quality',
          'Assist in the operation of the service, e.g. monitoring, alerting, metrics, logging and troubleshooting',
          'Work closely with architect and product management to understand requirements and translate them to elegant implementations',
          'Use the current system behavior to identify opportunities for continuous improvement of the scalability, reliability, usability and security of the system',
          'Excellent troubleshooting skills, able to debug complex technical issues involving multiple system components',
        ],
      ),
      Job(
        'Airbnb, Inc.',
        'assets/images/airbnb_logo.png',
        false,
        'Senior Software Engineer2',
        'Singapore, Permanent2',
        'Full Time',
        [
          'BS or MS in Computer Science or related technical field',
          'More than 8 years of experience building web applications',
          'Experience with ASP.NET MVC/Web API/RESTful API design',
          'Expert level experience with programming languages such as C#/Java',
          'Expert level experience in building services with high performance, high availability at web scale',
        ],
      ),
    ];
  }
}
