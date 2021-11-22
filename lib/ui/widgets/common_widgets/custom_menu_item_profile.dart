part of '../widgets.dart';

class CustomMenuItemProfile extends StatelessWidget {
  final String menuName;
  const CustomMenuItemProfile({ Key? key, required this.menuName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kRealWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(left: 24, right: 20, top: 16, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    menuName,
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kGreyColor,
                    size: 18,
                  )
                ],
              )),
          Container(
            color: kGreyColor,
            width: double.infinity,
            height: 1,
          )
        ],
      ),
    );
  }
}