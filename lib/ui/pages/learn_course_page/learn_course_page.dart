part of '../pages.dart';

class LearnCoursePage extends StatelessWidget {
  const LearnCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tabBar() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: kRealWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back),
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 8),
                    child: Text(
                        'Belajar Memasak dengan susah payah sad as dsa ',
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold)))),
            
          ],
        ),
      );
    }

    Widget contentCourse() {
      return Container(
        padding: EdgeInsets.only(
            top: 8, left: defaultMargin, right: defaultMargin, bottom: 12),
        width: double.infinity,
        color: kRealWhiteColor,
        child: Container(
          height: 225,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: kPrimaryColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/image4.jpg'),
                  fit: BoxFit.cover)),
        ),
      );
    }

    Widget listContentCourse() {
      return Container(
        padding: EdgeInsets.only(
            top: 14, right: defaultMargin, left: defaultMargin, bottom: 20),
            child: Column(
              children: [
                LearnContentListItem(contentName: 'ini isi konten ya akhbdkjahdkasjhdkajd asd as das dsad asd as da'),
                LearnContentListItem(contentName: 'ini isi konten ya akhbdkjahd'),
                LearnContentListItem(contentName: 'ini isi konten ya '),
                LearnContentListItem(contentName: 'ini isi konten ya akhbdkjahdkasjhdkajd asd as das dsad asd as da'),
                LearnContentListItem(contentName: 'ini isi konten ya akhbdkjahdkas asd as da'),
                LearnContentListItem(contentName: 'ini isi konten ya akhbdkjahdkasjhdkajd asd as das dsad asd as da'),
                LearnContentListItem(contentName: 'ini isi konten ya akhbdkjahdkasjhdkajd asd as das dsad asd as da'),
              ],
            ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: ListView(
          children: [
            tabBar(),
            contentCourse(),
            listContentCourse(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
