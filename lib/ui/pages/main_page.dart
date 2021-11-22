part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
      return MyCoursePage();
      case 2:
      return ProfilePage();
      default:
      return HomePage();
    }
  }

  Widget bottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(bottom: 24, left: 24, right: 24),
        decoration: BoxDecoration(
            color: kRealWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavigationBottomItems(index: 0,
              imageUrl: 'assets/icons/ic_home.png',
            ),
            CustomNavigationBottomItems(index: 1,
              imageUrl: 'assets/icons/ic_class.png',
            ),
            CustomNavigationBottomItems(index: 2,
              imageUrl: 'assets/icons/ic_profile.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
