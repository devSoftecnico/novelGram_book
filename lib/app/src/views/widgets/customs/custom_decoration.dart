import 'package:novelgram_book/app/exports.dart';

const customDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
      'lib/assets/images/splash.png',
    ),
    fit: BoxFit.cover,
  ),
);

const customDecorationBook = BoxDecoration(
  color: Color(0xfffff8ee),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25.0),
    topRight: Radius.circular(25.0),
  ),
);

final customDecorationLineBook = BoxDecoration(
  borderRadius: BorderRadius.circular(100.0),
  color: nRed2Color,
);

const customDecorationBgBook = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('lib/assets/images/home.png'),
    opacity: 0.5,
    colorFilter: ColorFilter.mode(
      Colors.blueGrey,
      BlendMode.dstATop,
    ),
    fit: BoxFit.cover,
  ),
);

final customDecorationSelctBook = BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  gradient: LinearGradient(
    colors: [
      Colors.black.withOpacity(0.3),
      Colors.transparent,
      Colors.black.withOpacity(0.3),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
);
