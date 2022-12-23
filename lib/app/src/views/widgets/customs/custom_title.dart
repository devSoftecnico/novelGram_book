import 'package:novelgram_book/app/exports.dart';

final customTitle = Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.end,
  children:  const[
    Text(
      'NovelGram',
      style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
    ),
     SizedBox(width: 5.0),
    Text(
      'Book',
      style: TextStyle(
        color: Colors.orange,
        fontSize: 16.0,
      ),
    ),
  ],
);
