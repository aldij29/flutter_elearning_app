part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        color: kRealWhiteColor,
        padding: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,\nAldi Jayadi',
                  style: blackTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2,
                      color: kSecondaryColor,
                      style: BorderStyle.solid),
                  image: DecorationImage(
                      image: AssetImage('assets/images/head.png'),
                      fit: BoxFit.contain)),
            )
          ],
        ),
      );
    }

    Widget searchFormField() {
      return Container(
        decoration: BoxDecoration(
            color: kRealWhiteColor, borderRadius: BorderRadius.circular(18)),
        margin:
            EdgeInsets.only(top: 5, left: defaultMargin, right: defaultMargin),
        child: TextFormField(
          cursorColor: kBlackColor,
          decoration: InputDecoration(
              fillColor: kBlackColor,
              suffixIcon: Icon(Icons.search),
              hintText: 'Find Course',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: kInactiveColor),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: kPrimaryColor))),
        ),
      );
    }

    Widget categorySection() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Category',
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              ),
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 24,
                ),
                CustomCategoryTileItem(
                  categoryItem: 'Category 1',
                ),
                CustomCategoryTileItem(
                  categoryItem: 'Category 2',
                ),
                CustomCategoryTileItem(
                  categoryItem: 'Category 3',
                ),
                CustomCategoryTileItem(
                  categoryItem: 'Category 4',
                ),
                CustomCategoryTileItem(
                  categoryItem: 'Category 5',
                ),
              ]),
            )
          ],
        ),
        width: double.infinity,
      );
    }

    Widget classSection() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'All Class',
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              ),
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                CourseItemTile(
                  imageUrl: 'assets/images/image1.jpg',
                  courseName: 'Belajar Mengeja Huruf',
                  mentorName: 'Nina Tsukaku',
                  priceCourse: 0,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image4.jpg',
                  courseName: 'Membangun Aplikasi Android Pertama',
                  mentorName: 'Reynold Udin',
                  priceCourse: 0,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image2.jpg',
                  courseName: 'Belajar Membuat Website Online Shop',
                  mentorName: 'Viktor Sukma',
                  priceCourse: 350000,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image3.jpg',
                  courseName: 'Belajar Berhitung dengan tidak Cepat',
                  mentorName: 'Shilva Yowes',
                  priceCourse: 0,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image6.jpg',
                  courseName: 'Belajar Membuat Aplikasi VR dengan Mudah',
                  mentorName: 'Razek Budiawan',
                  priceCourse: 70000,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image5.jpg',
                  courseName: 'Mahir Figma dalam Sekejap',
                  mentorName: 'Mona Guilding',
                  priceCourse: 750000,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image2.jpg',
                  courseName: 'Expert Android Studio',
                  mentorName: 'Gerarld Rivia',
                  priceCourse: 150000,
                  ratingCourse: 3.5,
                ),
                CourseItemTile(
                  imageUrl: 'assets/images/image3.jpg',
                  courseName: 'Belajar Coding Untuk  yang bukan Pemula',
                  mentorName: 'Budi Maxime',
                  priceCourse: 200000,
                  ratingCourse: 3.5,
                ),
                SizedBox(
                  height: 80,
                ),
              ]),
            )
          ],
        ),
        width: double.infinity,
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          searchFormField(),
          categorySection(),
          classSection()
        ],
      ),
    );
  }
}
