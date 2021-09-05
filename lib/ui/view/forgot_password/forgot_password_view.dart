import 'package:flutter/material.dart';
import 'package:hng/general_widgets/custom_textfield.dart';
import 'package:stacked/stacked.dart';
import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      viewModelBuilder: () => ForgotPasswordViewModel(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffF7F7F7),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/logo/zuri_chat_logo.png'),
              ),
              SizedBox(
                height: 24.0,
              ),
              Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Center(
                child: Text(
                  'Please enter the email used in registering user',
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Center(
                child: Text(
                  'this account',
                ),
              ),
              SizedBox(
                height: 49.0,
              ),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                autoFocus: false,
                autoCorrect: true,
                obscureText: false,
                labelText: 'Email',
                hintText: 'Name@gmail.com',
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          color: Color(0xffFFFFFF)),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      primary: Color(0xff00B87C),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
