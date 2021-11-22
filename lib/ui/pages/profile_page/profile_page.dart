part of '../pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(bottom: 20),
        color: kRealWhiteColor,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 12),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 4, color: kSecondaryColor),
                    color: kBlueColor,
                    image: DecorationImage(
                        image: AssetImage('assets/images/head.png'),
                        fit: BoxFit.cover)),
              ),
              Text('Aldi Jayadi', style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),),
              SizedBox(height: 4,),
              Text('aldi.jayadi29@gmail.com', style: greyTextStyle.copyWith(fontSize: 14, fontWeight: regular),)
            ],
          ),
        ),
      );
    }

  Widget courseDetailTab() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 12),
      color: kRealWhiteColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomProfileTabItem(indexTab: 0, tabItem: 'Profile'),
          CustomProfileTabItem(indexTab: 1, tabItem: 'E-Learning')
        ],
      ),
    );
  }

  
 
  Widget buildContentTab(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return ProfileMenuItem();
      case 1:
        return IngenioMenuItem();
      default:
        return ProfileMenuItem();
    }
  }

  Widget courseDetailTabContent() {
    return BlocBuilder<TabCubit, int>(builder: (context, currentIndex) {
      return Column(
        children: [courseDetailTab(), buildContentTab(currentIndex)],
      );
    });
  }


    return SafeArea(
      child: ListView(
        children: [header(), SizedBox(height: 20,), courseDetailTabContent()],
      ),
    );
  }
}
