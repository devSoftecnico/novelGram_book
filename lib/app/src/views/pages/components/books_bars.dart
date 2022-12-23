import 'package:novelgram_book/app/exports.dart';

class BooksBars extends StatefulWidget {
  final double? height;
  final Color? color;
  
  const BooksBars({super.key, this.height, this.color});

  @override
  State<BooksBars> createState() => _BooksBarsState();
}

class _BooksBarsState extends State<BooksBars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:4.0 ,
      color: const Color(0xfffff8ee),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Center(
        child: Container(
          height: widget.height,
          width: 4.0,
          color: widget.color,
        ),
      ),
    );
  }
}