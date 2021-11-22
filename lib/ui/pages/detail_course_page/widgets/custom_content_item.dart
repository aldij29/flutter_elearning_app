part of '../../../widgets/widgets.dart';

class CustomContentItem extends StatelessWidget {
  const CustomContentItem({Key? key}) : super(key: key);

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
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
            'data asd sa das dasdasd asd as dsa das das das das das das das dasd asd sad asd sad asd as das asdas',
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          )),
          Icon(
            Icons.lock,
            color: kGreyColor,
          )
        ],
      ),
    );
  }
}
