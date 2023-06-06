import 'package:flutter/material.dart';
import 'package:login_form/components/custom_button.dart';
import 'package:login_form/components/custom_password_field.dart';
import 'package:login_form/components/custom_scaffold.dart';
import 'package:login_form/components/custom_textfield.dart';
import 'package:login_form/styles/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          _buildTitle()
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: BackButton(color: white,)),
          Text("Sign Up", style: TextStyle(color: white, fontSize: 40, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text("Don't have account yet? Please register your account with username and password.", style: TextStyle(
            color: yellow
          ),),
          SizedBox(height: 40,),
          _getUserName(),
          SizedBox(height: 15,),
          _getPassword(),
          SizedBox(height: 15,),
          _getConfirmPassword(),
          SizedBox(height: 30,),
          _getButton()
        ],
      ),
    );
  }

  Widget _getUserName() {
    return CustomTextfield(
      hintText: "Username",
      iconData: Icons.people,
      suffixIcon: SizedBox(),
    );
  }

  Widget _getPassword() {
    return CustomPasswordField();
  }

  Widget _getConfirmPassword() {
    return CustomPasswordField();
  }

  Widget _getButton() {
    return CustomButton(
      title: "CREATE",
    );
  }
}