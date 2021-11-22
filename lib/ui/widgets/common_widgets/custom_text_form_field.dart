part of '../widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  const CustomTextFormField({ Key? key, required this.title, required this.hintText,  this.obsecureText = false, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: controller,
                obscureText: obsecureText,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: kInactiveColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
  }
}