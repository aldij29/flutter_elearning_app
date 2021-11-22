part of '../../pages.dart';

class TermConditionPage extends StatelessWidget {
  const TermConditionPage({ Key? key }) : super(key: key);

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
              'Term & Condition Page',
              style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
        ),
      ),
    );
  }
}