import 'package:novelgram_book/app/exports.dart';

class BookHome extends StatelessWidget {
  const BookHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customDecorationBgBook,
        child: Column(
          children: [
            Container(
              padding: customPaddingBook,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BooksProfile(),
                      ),
                    ),
                    icon: const Icon(
                      Icons.menu,
                      color: nWhiteColor,
                      size: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: nWhiteColor,
                      size: 35.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: customPaddingBgBook,
                width: double.infinity,
                decoration: customDecorationBook,
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'NovelGram',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 10.0,
                        margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
                        decoration: customDecorationLineBook,
                      ),
                      const BookSection(heading: 'Estante para libros'),
                      const BookSection(heading: 'Sigue leyendo'),
                      const BookSection(heading: 'Descubrir más'),
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
