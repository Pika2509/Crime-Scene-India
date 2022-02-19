// ignore_for_file: prefer_const_constructors

import 'package:crimeapp/components/default_button.dart';
import 'package:crimeapp/constants.dart';
import 'package:crimeapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix.dart';
import '../../../components/form_error.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({ Key? key }) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  final _formKey= GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
            Checkbox(
              value: remember, 
              activeColor: kPrimaryColor,
              onChanged: (value){
                setState(() {
                  remember = value!;
                });
              }
              ),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                child: Text('Forgot password?', 
                style: TextStyle(decoration: TextDecoration.underline),              
                ),
              ),
          ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Login", 
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            }
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue!,
          onChanged: (value){
            if (value.isNotEmpty && errors.contains(kPassNullError)) {
              setState(() {
                errors.remove(kPassNullError);
              });
            } else if (value.length>=8 && errors.contains(kShortPassError)) {
              setState(() {
                errors.remove(kShortPassError);
              });
            }
            return;
          },
          validator: (value){
            if (value!.isEmpty && !errors.contains(kPassNullError)) {
              setState(() {
                errors.add(kPassNullError);
              });
              return ;
            } else if (value.length<8 && !errors.contains(kShortPassError)) {
              setState(() {
                errors.add(kShortPassError);
              });
              return;
            }
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter password",               
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: customSufficIcon(svgIcon: "assets/icons/Lock.svg"),
          ),
        );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue!,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return;
          },
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
              return;
            } else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.add(kInvalidEmailError);
              });
              return;
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter email ID",               
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: customSufficIcon(svgIcon: "assets/icons/Mail.svg"),
          ),
        );
  }
}
