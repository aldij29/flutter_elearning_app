part of '../pages.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({Key? key}) : super(key: key);

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
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
        children: [Icon(Icons.arrow_back_ios), Icon(Icons.more_vert)],
      ),
    );
  }

  Widget thumbnailCourse() {
    return Container(
      width: double.infinity,
      color: kRealWhiteColor,
      child: Container(
        height: 225,
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage('assets/images/image1.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }

  Widget courseDetail() {
    return Container(
      color: kRealWhiteColor,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Course Name',
            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '4.5',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: regular),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'by Course Mentor',
                      overflow: TextOverflow.ellipsis,
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IllustrationPage(
                                imageUrl: 'assets/images/image_join_course.png',
                                subTitle1: 'You’ve Joined The Course',
                                subTitle2:
                                    'now you have started to \nlearn something new',
                                textButton1: 'Start Course',
                                textButton2: 'Join Other Course',
                              )));
                },
                child: Container(
                  width: 140,
                  height: 36,
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Join Now',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget courseDetailTab() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      color: kRealWhiteColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCourseDetailTabItem(index: 0, tabItem: 'Description'),
          CustomCourseDetailTabItem(index: 1, tabItem: 'Lesson'),
          CustomCourseDetailTabItem(index: 2, tabItem: 'Mentor')
        ],
      ),
    );
  }

  Widget courseDetailTabContent() {
    return BlocBuilder<PageCubit, int>(builder: (context, currentIndex) {
      return Column(
        children: [courseDetailTab(), buildContentTab(currentIndex)],
      );
    });
  }

  Widget buildContentTab(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          width: double.infinity,
          color: kRealWhiteColor,
          child: Text(
            'Description asdas das asd asdasd asdas dsadasdasd asd asdsadas sda asd as dsa  sadsadasdasda asdadsad',
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: regular),
          ),
        );
      case 1:
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          width: double.infinity,
          child: Column(
            children: [
              CustomContentItem(),
              CustomContentItem(),
              CustomContentItem(),
              CustomContentItem(),
              CustomContentItem(),
              CustomContentItem(),
              CustomContentItem(),
            ],
          ),
        );
      case 2:
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          width: double.infinity,
          color: kRealWhiteColor,
          child: Text(
            'Description asdas das asd asdasd asdas dsadasdasd asd asdsadas sda asd as dsa  sadsadasdasda asdadsad',
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: regular),
          ),
        );
      default:
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          width: double.infinity,
          color: kRealWhiteColor,
          child: Text(
            'Description asdas das asd asdasd asdas dsadasdasd asd asdsadas sda asd as dsa  sadsadasdasda asdadsad',
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: regular),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: ListView(
          children: [
            tabBar(),
            thumbnailCourse(),
            courseDetail(),
            SizedBox(
              height: 20,
            ),
            courseDetailTabContent()
          ],
        ),
      ),
    );
  }
}
