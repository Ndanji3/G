class BookModel {
  String image;
  String secondImage;
  String title;
  String subtitle;
  bool favorite;

  BookModel({
    required this.image,
    required this.secondImage,
    required this.title,
    required this.subtitle,
    required this.favorite,
  });

  //The new book

  static BookModel newBook = BookModel(
    image: "assets/images/new_book_1.jpg",
    secondImage: "assets/images/new_book_2.jpg",
    title: "Plant House",
    subtitle: "Lynnet",
    favorite: true,
  );

  //Let's create our list of books

  static List<BookModel> books = [
    BookModel(
      image: "assets/images/book_1.jpg",
      secondImage: "assets/images/book_1.jpg",
      title: "Plant Anatomy",
      subtitle: "Paul",
      favorite: false,
    ),
    BookModel(
      image: "assets/images/book_2.jpg",
      secondImage: "assets/images/book_2.jpg",
      title: "Plant Ecology",
      subtitle: "Milika",
      favorite: false,
    ),
    BookModel(
      image: "assets/images/book_3.jpg",
      secondImage: "assets/images/book_3.jpg",
      title: "House Plants",
      subtitle: "Mpundu",
      favorite: false,
    ),
    BookModel(
      image: "assets/images/book_4.jpg",
      secondImage: "assets/images/book_4.jpg",
      title: "The Mind of A Plant",
      subtitle: "Lombe",
      favorite: true,
    ),
    BookModel(
      image: "assets/images/book_5.jpg",
      secondImage: "assets/images/book_5.jpg",
      title: "Practical House Plant",
      subtitle: "Vid",
      favorite: true,
    ),
    //5 books
  ];
}
