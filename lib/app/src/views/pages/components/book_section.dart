import 'package:novelgram_book/app/exports.dart';

class BookSection extends StatefulWidget {
  final String heading;

  const BookSection({super.key, required this.heading});

  @override
  State<BookSection> createState() => _BookSectionState();
}

class _BookSectionState extends State<BookSection> {
  @override
  Widget build(BuildContext context) {
    List<Book>? bookList;
    final size = MediaQuery.of(context).size;

    if (widget.heading == "Sigue leyendo") {
      bookList = recentBooks;
    } else if (widget.heading == "Descubrir más") {
      bookList = allBooks;
    } else if (widget.heading == "Estante para libros") {
      bookList = allBooks;
    }
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.heading,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            height: size.height * 0.4,
            child: ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BooksDetails(
                      index: index,
                      section: widget.heading,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, left: 5.0),
                          height: size.height * 0.27,
                          width: size.width * 0.4,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        blurRadius: 5.0,
                                        offset: const Offset(8, 8),
                                        spreadRadius: 1.0,
                                      ),
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    bookList![index].coverImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height * 0.27,
                                width: double.infinity,
                                decoration: customDecorationSelctBook,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          bookList[index].name!,
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Text(
                          bookList[index].author!,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30.0),
                  ],
                ),
              ),
              itemCount: bookList?.length,
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
