part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String imageUrl;
  final String subTitle1;
  final String subTitle2;
  final String textButton1;
  final String? textButton2;
  const IllustrationPage(
      {Key? key,
      required this.imageUrl,
      required this.subTitle1,
      required this.subTitle2,
      required this.textButton1,
      this.textButton2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            imageUrl))),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                subTitle1,
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                subTitle2,
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/sign-in-page');
                },
                child: Container(
                  width: 200,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: kSecondaryColor),
                  child: Center(
                    child: Text(
                      textButton1,
                      style: whiteTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              textButton2 != null ? Container(
                width: 200,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: kGreyColor),
                child: Center(
                  child: Text(
                    textButton2!,
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                ),
              ): SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
