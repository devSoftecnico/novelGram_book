import 'package:novelgram_book/app/exports.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customTitle,
      ),
    );
  }
}
