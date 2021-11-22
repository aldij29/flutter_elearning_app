part of '../../../widgets/widgets.dart';

class IngenioMenuItem extends StatelessWidget {
  const IngenioMenuItem({Key? key}) : super(key: key);


  Widget buttonSignOut() {
    return Container(
      height: 45,
      width: 180,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: kRedColor),
      child: Center(
          child: Text(
        'Sign Out',
        style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutIngenioPage()));
              },
              child: CustomMenuItemProfile(menuName: 'About')),
              GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HelpCenterPage()));
              },
              child: CustomMenuItemProfile(menuName: 'Help Center')),
              GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyPolicyPage()));
              },
              child: CustomMenuItemProfile(menuName: 'Privacy & Policy')),
              GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TermConditionPage()));
              },
              child: CustomMenuItemProfile(menuName: 'Term & Conditions')),
        ],
      ),
    );
  }
}
