class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "Ndanji",
    completedPercentage: .55,
    name: "Biomass powered engined",
    thumbnail: "assets/dr_1.JPEG",

  ),
  Course(
    author: "Paul",
    completedPercentage: .40,
    name: "portable hydro powered gensets",
    thumbnail: "assets/dr_2.JPEG",
  ),
  Course(
    author: "Ntino",
    completedPercentage: .95,
    name: "Solar paneled roofing sheets",
    thumbnail: "assets/dr_3.JPEG",
  ),
  Course(
    author: "Lombe",
    completedPercentage: .30,
    name: "Hybrid Fish Feed",
    thumbnail: "assets/dr_4.JPG", /* <a href="https://www.freepik.com/free-ai-image/portrait-man-cartoon-style_137497745.htm#query=cartoon%20person%20png&position=5&from_view=keyword&track=ais_hybrid&uuid=05a8bc45-514e-4693-88fe-37d42fc223ce">Image by freepik</a>*/
  ),

];
