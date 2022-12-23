import 'package:novelgram_book/app/src/models/book_model.dart';

List<Book> _allBooks = [
  Book(
      name: "Recipie For a Per..",
      author: "Karma Brown",
      coverImage: "lib/assets/books/3.jfif",
      rating: 4.0),
  Book(
      name: "The Glass Hotel",
      author: "Emily St. John Mandel",
      coverImage: "lib/assets/books/4.jfif",
      rating: 4.0),
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "lib/assets/books/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "lib/assets/books/1.jfif",
      rating: 4.0),
  Book(
      name: "From The Ashes",
      author: "Jesse Thistle",
      coverImage: "lib/assets/books/2.jfif",
      rating: 4.0),
  Book(
      name: "City of Girls",
      author: "Elizabeth Gilbert",
      coverImage: "lib/assets/books/5.jfif",
      rating: 4.0),
  Book(
      name: "Everything I never..",
      author: "Cebste NG",
      coverImage: "lib/assets/books/6.jfif",
      rating: 4.0)
];

List<Book> _recentBooks = [
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "lib/assets/books/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "lib/assets/books/1.jfif",
      rating: 4.0),
];

List<Book> get allBooks {
  return [..._allBooks];
}

List<Book> get recentBooks {
  return [..._recentBooks];
}