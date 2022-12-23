import 'package:novelgram_book/app/exports.dart';
import 'dart:ui';

class BooksListen extends StatefulWidget {
  final int index;
  final String section;

  const BooksListen({
    Key? key,
    required this.index,
    required this.section,
  }) : super(key: key);

  @override
  State<BooksListen> createState() => _BooksListenState();
}

class _BooksListenState extends State<BooksListen> {
  List<Book>? bookList;
  List<int> heights = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    for (int i = 0; i < size.width / 9.3; i++) {
      heights.add(Random().nextInt(50));
    }

    if (widget.section == "Sigue leyendo") {
      bookList = recentBooks;
    } else if (widget.section == "Descubrir más") {
      bookList = allBooks;
    }else if (widget.section == "Estante para libros") {
      bookList = allBooks;
    }

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              bookList![widget.index].coverImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20.0,
            sigmaY: 20.0,
          ),
          child: Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.1),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: nWhiteColor,
                            size: 35.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: nWhiteColor,
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
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
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    bookList![widget.index].author!,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xfffff8ee),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Capítulo 1',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 50.0,
                                width: size.width,
                                child: ListView.builder(
                                  itemCount: heights.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => BooksBars(
                                    height: heights[index].toDouble(),
                                    color: index < heights.length / 2
                                        ? const Color(0xffc44536)
                                        : Colors.redAccent.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('01:35'),
                                  Text('08:55'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.menu, color: Colors.grey, size: 32.0),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.skip_previous, color: Colors.grey, size: 38.0),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 16.0, right: 15.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffc44536),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.pause,
                                    color: Colors.white,
                                    size: 48.0,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.skip_next, color: Colors.grey, size: 38.0),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz, color: Colors.grey, size: 38.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
