part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/images/elearning_logo.png'), fit: BoxFit.contain)),
            ),
            SizedBox(
              height: 20,
            ),
            Text('E-Learning App', style: titleTextStyle.copyWith(fontSize: 24),)
          ],
        ),
      ),
    );
  }
}
