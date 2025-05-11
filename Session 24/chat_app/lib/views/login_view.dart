import 'package:chat_app/models/user_credential_model.dart';
import 'package:chat_app/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_style.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_pass_text_form_field.dart';
import '../widgets/custom_text.dart';
import '../widgets/logo_widget.dart';
import 'signup_view.dart';

class LoginView extends StatefulWidget {
  static const String id = 'LoginView';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      color: Colors.white,
      blur: 3,
      progressIndicator: CircularProgressIndicator(
        color: AppColors.primaryColor,
      ),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 150),
              // LOGO SECTION
              LogoWidget(),
              // LOGIN WORD
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Sign In', style: AppTextStyle.regular24)],
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
                text: 'Login',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});
                    await AuthServices(context: context).signIn(
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
              // SIGN IN BUTTON
              CustomText(
                text: 'Don\'t have an account ? ',
                hyperlinkText: 'Sign Up',
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(SignupView.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
