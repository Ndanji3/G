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
    author: "Malata",
    completedPercentage: .55,
    name: "Biomass powered engined",
    thumbnail: "assets/icons/2.jpg",
  ),
  Course(
    author: "Paul Seyuba",
    completedPercentage: .40,
    name: "portable hydro powered gensets",
    thumbnail: "assets/icons/6.jpg",
  ),
  Course(
    author: "Ndanja Simbeye",
    completedPercentage: .95,
    name: "Solar paneled roofing sheets",
    thumbnail: "assets/icons/5.jpg",
  ),
  Course(
    author: "Vid",
    completedPercentage: .30,
    name: "Hybrid Fish Feed",
    thumbnail: "assets/icons/1.jpg", /* <a href="https://www.freepik.com/free-ai-image/portrait-man-cartoon-style_137497745.htm#query=cartoon%20person%20png&position=5&from_view=keyword&track=ais_hybrid&uuid=05a8bc45-514e-4693-88fe-37d42fc223ce">Image by freepik</a>*/
  ),
  Course(
    author: "Lombe",
    completedPercentage: .60,
    name: "Bio mass powered power generator",
    thumbnail: "assets/icons/3.jpg",
  ),
  Course(
    author: "Lin",
    completedPercentage: .10,
    name: "Node - The complete guide",
    thumbnail: "assets/icons/2.jpg",
  ),
  Course(
    author: "M2",
    completedPercentage: .30,
    name: "Hybrid Fish Feed",
    thumbnail: "assets/icons/1.jpg", /* <a href="https://www.freepik.com/free-ai-image/portrait-man-cartoon-style_137497745.htm#query=cartoon%20person%20png&position=5&from_view=keyword&track=ais_hybrid&uuid=05a8bc45-514e-4693-88fe-37d42fc223ce">Image by freepik</a>*/
  ),

];
