part of '../../../widgets/widgets.dart';

class CourseItemTile extends StatelessWidget {
  final String imageUrl;
  final String courseName;
  final String mentorName;
  final int priceCourse;
  final double ratingCourse;
  const CourseItemTile(
      {Key? key,
      required this.imageUrl,
      required this.courseName,
      required this.mentorName,
      required this.priceCourse,
      required this.ratingCourse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainPage()));
      },
      child: Container(
        width: double.infinity,
        height: 110,
        margin: EdgeInsets.only(right: 6, bottom: 12),
        decoration: BoxDecoration(
            color: kRealWhiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Row(
          children: [
            Container(
              height: 110,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(8),
                    topRight: Radius.circular(8)),
                color: kSecondaryColor,
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.contain),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 6, top: 4),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(courseName,
                              overflow: TextOverflow.ellipsis,
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'By ' + mentorName,
                            overflow: TextOverflow.ellipsis,
                            style: greyTextStyle.copyWith(
                                fontWeight: medium, fontSize: 12),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            priceCourse == 0
                                ? 'Free'
                                : 'Rp. ' + priceCourse.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: blackTextStyle.copyWith(
                                color: kGreenColor,
                                fontSize: 12,
                                fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  ratingCourse.toString(),
                                  style: blackTextStyle.copyWith(
                                      fontWeight: semiBold, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            decoration: BoxDecoration(
                                color: kBlueColor,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    topLeft: Radius.circular(12))),
                            child: Text(
                              'Lihat Detail >',
                              style: whiteTextStyle.copyWith(
                                  fontWeight: regular, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
