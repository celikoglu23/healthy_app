import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/base/functions/base_functions.dart';
import 'package:flutter_mobile_template/core/components/textFormField/text_form_field_widget.dart';
import 'package:flutter_mobile_template/core/constants/app/app_constants.dart';
import 'package:flutter_mobile_template/core/extensions/num_extensions.dart';
import 'package:flutter_mobile_template/core/extensions/string_extensions.dart';
import 'package:flutter_mobile_template/view/auth/login/service/user_service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/components/button/button_widget.dart';
import '../../../core/components/text/custom_text.dart';
import '../../../core/components/wave_clipper/wave_clipper.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final UserService _userService = UserService();
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool isShow = false;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    if (value != isLoading) {
      setState(() {
        _isLoading = value;
      });
    }
  }

  _signInWithGoogle() async {
    return await _userService
        .signInWithGoogle()
        .then((value) => context.go('/home'));
  }

  bool validate() => _formKey.currentState!.validate();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Opacity(
              opacity: 0.7,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: AppConstants.keppel,
                  height: 15.h + 150,
                  width: double.infinity,
                ),
              ),
            ),
            CustomText(
              "Log In",
              textStyle:
                  TextStyle(fontSize: 20.sp, color: AppConstants.scorpion),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    1.h.ph,
                    TextFormFieldWidget(
                      onSaved: (value) {
                        email = value;
                      },
                      hintText: "E-mailiniz",
                    ),
                    3.h.ph,
                    TextFormFieldWidget(
                      onSaved: (value) {
                        password = value;
                      },
                      hintText: "Parolanız",
                      obsecureText: isShow ? false : true,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          child: (isShow
                              ? const Icon(
                                  Icons.visibility,
                                  size: 20,
                                  color: AppConstants.keppel,
                                )
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                  size: 20,
                                  color: AppConstants.keppel,
                                )),
                        ),
                      ),
                    ),
                    isLoading
                        ? platformIndicator()
                        : Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: ButtonWidget(
                              onTap: () {},
                              buttonColor: AppConstants.keppel,
                              width: 20.w,
                              text: "Enter",
                              textColor: Colors.white,
                            ),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width: 80,
                          color: AppConstants.scorpion.withOpacity(0.5),
                        ),
                        const CustomText(
                          "Or continue with",
                          textStyle:
                              TextStyle(color: AppConstants.silverchalice),
                        ),
                        Container(
                          height: 1,
                          width: 80,
                          color: AppConstants.scorpion.withOpacity(0.5),
                        ),
                      ],
                    ),
                    2.h.ph,
                    InkWell(
                      onTap: () => _signInWithGoogle(),
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppConstants.background),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("google".toSvg),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
