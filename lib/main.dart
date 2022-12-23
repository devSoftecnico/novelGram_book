import 'package:novelgram_book/app/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NovelGramBookApp());
}

class NovelGramBookApp extends StatelessWidget {
  const NovelGramBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NovelGram Book',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: customPrimarySwatch,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "SourceSansPro"),
      home: const MainLayout(
        mobile: MobileScreen(),
        tablet: TabletScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
