part of '../../pages.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({ Key? key }) : super(key: key);

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
              'Privacy Policy Page',
              style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
        ),
      ),
    );
  }
}