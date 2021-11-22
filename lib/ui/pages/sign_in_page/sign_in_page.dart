part of '../pages.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: "");

  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Login',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          obsecureText: true,
          controller: passwordController,
        );
      }

      Widget signInButton() {
        return Container(
          height: 55,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kSecondaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/main-page');
            },
            child: Text(
              'Sign In',
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
          ),
        );
      }

      Widget createNewAccountButton() {
        return Container(
          height: 55,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kGreyColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up-page');
            },
            child: Text(
              'Create New Account',
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium,),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kRealWhiteColor, borderRadius: BorderRadius.circular(18.0)),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            signInButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't Have an Account ?",
            style: greyTextStyle.copyWith(fontSize: 12, fontWeight: light),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up-page');
              },
              child: Text(
                'Sign Up',
                style: blueTextStyle.copyWith(fontSize: 12, fontWeight: medium, color: kSecondaryColor),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            SizedBox(
              height: 24,
            ),
            tacButton()
          ],
        ),
      ),
    );
  }
}
