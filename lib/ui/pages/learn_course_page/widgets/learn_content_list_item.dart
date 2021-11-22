part of '../../../widgets/widgets.dart';

class LearnContentListItem extends StatelessWidget {
  final String contentName;
  final String? contentType;
  final String? urlContent;
  const LearnContentListItem(
      {Key? key, required this.contentName, this.contentType, this.urlContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      margin: EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kRealWhiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(right: 4),
            child: Text(
              contentName,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
            ),
          )),
          Icon(
            Icons.play_arrow,
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
