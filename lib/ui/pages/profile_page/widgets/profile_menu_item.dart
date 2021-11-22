part of '../../../widgets/widgets.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
  }) : super(key: key);

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              child: CustomMenuItemProfile(menuName: 'Edit Profile')),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecurityPage()));
              },
              child: CustomMenuItemProfile(menuName: 'Security')),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentsPage()));
              },
              child: CustomMenuItemProfile(menuName: 'Payments')),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in-page');
              },
              child: buttonSignOut())
        ],
      ),
    );
  }
}
