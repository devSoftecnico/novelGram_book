import 'package:novelgram_book/app/exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Container(
        alignment: Alignment.centerRight,
        decoration: customDecoration,
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                width: size.width * 0.8,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'lib/assets/images/logotipo.png',
                              width: 130.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'NovelGram',
                                style: TextStyle(
                                  color: Color(0xff3a1c42),
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                'Book',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: const Color(0xff3a1c42),
                            ),
                          ),
                          const SizedBox(height: 50.0),
                          const Text(
                            'leer\nescuchar\ninspirarse...',
                            style: TextStyle(
                              height: 1.75,
                              letterSpacing: 2.0,
                              color: Color(0xffC44536),
                              fontSize: 32.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(30.0),
                          height: 50.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: const Color(0xffC44536),
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BookHome(),
                              ),
                            ),
                            icon: const Icon(
                              Icons.navigate_next,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
