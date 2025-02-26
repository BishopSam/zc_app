import 'package:flutter/material.dart';
import '../../shared/colors.dart';
// import '../../../app/app.router.dart';
import '../../../general_widgets/custom_textfield.dart';
// import '../forgot_password/forgot_password_view.dart';
import 'package:stacked/stacked.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
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
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              )),
              SizedBox(
                height: 4.0,
              ),
              Center(child: Text('Welcome! Sign in to continue')),
              SizedBox(
                height: 49.0,
              ),
              const CustomTextField(
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
              const CustomTextField(
                keyboardType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                autoFocus: false,
                autoCorrect: true,
                obscureText: true,
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
              Container(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () => model.navigateToForgotPasswordScreen(),
                  child: const Text('Forget Password?'),
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: ElevatedButton(
                    onPressed: () {
                      model.navigateToHomeScreen();
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      primary: const Color(0xff00B87C),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () => model.navigateToSignUpScreen(),
                    child: const Text('Register'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
