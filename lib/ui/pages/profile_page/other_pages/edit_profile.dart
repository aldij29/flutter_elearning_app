part of '../../pages.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController emailController = TextEditingController(text: "");

  TextEditingController passwordController = TextEditingController(text: "");

  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14),
      height: 70,
      width: double.infinity,
      color: kRealWhiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.arrow_back_ios), Icon(Icons.more_vert)],
      ),
    );
  }

  Widget profilePict() {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
      child: Center(  
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                color: kPrimaryColor,
              ),
              child: Center(
                  child: Text(
                'AJ',
                style:
                    whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 60),
              )),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Text(
                'Change Profile Picture',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget inputSection() {
    Widget firstNameInput() {
      return CustomTextFormField(
        title: 'First Name',
        hintText: 'Your first name',
        controller: emailController,
      );
    }
    Widget lastNameInput() {
      return CustomTextFormField(
        title: 'Last Name',
        hintText: 'Your last name',
        controller: emailController,
      );
    }
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
            backgroundColor: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/main-page');
          },
          child: Text(
            'Update Profile',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
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
          firstNameInput(),
          lastNameInput(),
          emailInput(),
          signInButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [header(), profilePict(),inputSection()],
        ),
      ),
    );
  }
}
