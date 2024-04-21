
import 'package:ecommerce_app/core/constant/name_routes.dart';
import 'package:ecommerce_app/core/middle_ware/middle.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpass/forget_password.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpass/reset_password.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpass/success_rest.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpass/verify_code.dart';
import 'package:ecommerce_app/view/screen/auth/verify_code_signup.dart';
import 'package:ecommerce_app/view/screen/home_page.dart';
import 'package:ecommerce_app/view/screen/language_page.dart';
import 'package:ecommerce_app/view/screen/on_boarding_page.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/test_view.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? getPages=[
 //GetPage(name:  AppRoute.root, page:()=> const TestView()),
 GetPage(name:  AppRoute.root, page:()=> const Language(),middlewares: [MyMiddleWare()]),
 GetPage(name:  AppRoute.login, page:()=> const LoginPage()),
 GetPage(name:  AppRoute.onBoarding, page:()=> const OnboardingPage()),
 GetPage(name:  AppRoute.forgetPassword, page:()=> const ForgetPasswordPage()),
 GetPage(name:  AppRoute.verifyCode, page:()=> const VerifyCodePage()),
 GetPage(name:  AppRoute.resetPassword, page:()=> const ResetPasswordPage()),
 GetPage(name:  AppRoute.successReset, page:()=> const SuccessRestPage()),
 GetPage(name:  AppRoute.signUp, page:()=> const SignUpPage()),
 GetPage(name:  AppRoute.verifyCodeSignUp, page:()=>  const VerifyCodeSignUpPage()),
 GetPage(name:  AppRoute.successSignUp, page:()=> const SuccessSignUpPage()),
 GetPage(name:  AppRoute.home, page:()=> const MyHomePage()),

];

/*
Map<String,Widget Function(BuildContext)>routes1= {
 //Language
 AppRoute.language:(ctx)=> const Language(),
 //Onboarding Page
 AppRoute.onBoarding:(ctx)=> const OnboardingPage(),
 //auth
 AppRoute.login:(ctx)=>const LoginPage(),
 AppRoute.forgetPassword:(ctx)=> const ForgetPasswordPage(),
 AppRoute.verifyCode:(ctx)=> const VerifyCodePage(),
 AppRoute.resetPassword:(ctx)=> const ResetPasswordPage(),
 AppRoute.successReset:(ctx)=> const SuccessRestPage(),
 AppRoute.signUp:(ctx)=>const SignUpPage(),
 AppRoute.verifyCodeSignUp:(ctx)=> const VerifyCodeSignUpPage(),
 AppRoute.successSignUp:(ctx)=> const SuccessSignUpPage(),
 //
 AppRoute.home:(ctx)=> const MyHomePage(),

};*/
