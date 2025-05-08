import 'package:chat_app/models/user_credential_model.dart';
import 'package:chat_app/services/auth_services.dart';
import 'package:chat_app/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_style.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_pass_text_form_field.dart';
import '../widgets/custom_text.dart';
import '../widgets/logo_widget.dart';

// ignore: must_be_immutable
class SignupView extends StatefulWidget {
  static const String id = 'SignUpView';
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        color: Colors.white,
        blur: 3,
        progressIndicator: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 150),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // LOGO SECTION
                  LogoWidget(),
                  // LOGIN WORD
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Register', style: AppTextStyle.regular24),
                      ],
                    ),
                  ),
                  // LOGIN FORM
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          text: 'E-mail',
                          onChanged: (data) {
                            email = data;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field is required';
                            } else {
                              return null;
                            }
                          },
                        ),
                        CustomPassTextFormField(
                          text: "Password",
                          onChanged: (data) {
                            password = data;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field is required';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  // SIGN IN BUTTON
                  CustomButton(
                    text: 'Sign Up',
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        await AuthServices(context: context).signUp(
                          userCredentialModel: UserCredentialModel(
                            email: email!,
                            password: password!,
                          ),
                        );
                        isLoading = false;
                        setState(() {});
                      }
                    },
                  ),
                  //
                  CustomText(
                    text: 'Already have an account ? ',
                    hyperlinkText: 'Sign In',
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(LoginView.id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
