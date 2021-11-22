part of '../pages.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        color: kRealWhiteColor,
        padding: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 20),
        child: Text(
          'My Class',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          overflow: TextOverflow.ellipsis,
        ),
      );
    }

    Widget myCourse() {
      return Container(
        padding: EdgeInsets.only(left: defaultMargin, top: 20, right: defaultMargin, bottom: 80),
        child: Column(
          children: [
            MyCourseItemTile(
              imageUrl: 'assets/images/image1.jpg',
              courseName: 'Belajar Berhitung dengan tidak Cepat',
              mentorName: 'Shilva Yowes',
              priceCourse: 0,
              ratingCourse: 3.5,
            ),
            MyCourseItemTile(
              imageUrl: 'assets/images/image4.jpg',
              courseName: 'Belajar Berhitung dengan tidak Cepat',
              mentorName: 'Shilva Yowes',
              priceCourse: 0,
              ratingCourse: 3.5,
            ),
            MyCourseItemTile(
              imageUrl: 'assets/images/image6.jpg',
              courseName: 'Belajar Berhitung dengan tidak Cepat',
              mentorName: 'Shilva Yowes',
              priceCourse: 0,
              ratingCourse: 3.5,
            ),
            MyCourseItemTile(
              imageUrl: 'assets/images/image5.jpg',
              courseName: 'Belajar Berhitung dengan tidak Cepat',
              mentorName: 'Shilva Yowes',
              priceCourse: 0,
              ratingCourse: 3.5,
            ),
            MyCourseItemTile(
              imageUrl: 'assets/images/image3.jpg',
              courseName: 'Belajar Berhitung dengan tidak Cepat',
              mentorName: 'Shilva Yowes',
              priceCourse: 0,
              ratingCourse: 3.5,
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          myCourse()
        ],
      ),
    );
  }
}
