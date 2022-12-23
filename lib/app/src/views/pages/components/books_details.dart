import 'package:novelgram_book/app/exports.dart';

class BooksDetails extends StatefulWidget {
  final int index;
  final String section;

  const BooksDetails({super.key, required this.index, required this.section});

  @override
  State<BooksDetails> createState() => _BooksDetailsState();
}

class _BooksDetailsState extends State<BooksDetails> {
      List<Book>? bookList;
     
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (widget.section == "Sigue leyendo") {
      bookList = recentBooks;
    } else if (widget.section == "Descubrir más") {
      bookList = allBooks;
    }else if (widget.section == "Estante para libros") {
      bookList = allBooks;
    }


    return Scaffold(
      backgroundColor: const Color(0xfffff8ee),
      body: SizedBox(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            SafeArea(
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: nBlackColor,
                              size: 35.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              color: nBlackColor,
                              size: 35.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30.0),
                      height: size.height * 0.35,
                      width: size.height * 0.25,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 25.0,
                                  offset: const Offset(8, 8),
                                  spreadRadius: 3.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 25.0,
                                  offset: const Offset(-8, -8),
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                bookList![widget.index].coverImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: customDecorationSelctBook,
                          ),
                        ],
                      ),
                    ),
                     Text(
                      bookList![widget.index].name!,
                      style:const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                     Text(
                      bookList![widget.index].author!,
                      style:const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmoothStarRating(
                          rating: 3,
                          size: 25.0,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                          onRatingChanged: (value) {
                            print(value);
                          },
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          '4.0',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(24.0),
                      height: 8.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 40.0,
                            right: 40.0,
                          ),
                          child: const Text(
                            'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                            style: TextStyle(fontSize: 20.0, letterSpacing: 1.5, height: 1.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xfffff8ee).withOpacity(0.1),
                      Colors.white.withOpacity(0.3),
                      const Color(0xfffff8ee).withOpacity(0.7),
                      const Color(0xfffff8ee).withOpacity(0.8),
                      const Color(0xfffff8ee),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 150.0,
                        height: 60.0,
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const BookRead(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffc44536),
                          ),
                          child: const Text(
                            'Leer',
                            style: TextStyle(
                              color: nWhiteColor,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30.0),
                      Container(
                        width: 150.0,
                        height: 60.0,
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => BooksListen(
                                index: widget.index,
                                section: widget.section,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF376107),
                          ),
                          child: const Text(
                            'Escuchar',
                            style: TextStyle(
                              color: nWhiteColor,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
