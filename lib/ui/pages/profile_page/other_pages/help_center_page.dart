part of '../../pages.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kRedColor,
          width: double.infinity,
          height: 455,
          child: Center(
            child: Text(
              'Help Center Page',
              style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
        ),
      ),
    );
  }
}