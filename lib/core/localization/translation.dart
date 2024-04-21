import 'package:ecommerce_app/core/constant/extra_key.dart';
import 'package:ecommerce_app/core/constant/values/strings.dart';
import 'package:ecommerce_app/core/constant/values/strings_ar.dart';
import 'package:ecommerce_app/core/constant/values/strings_en.dart';
import 'package:get/get.dart';



class MyTranslation extends Translations{
  /*
    {
    ar:{nameKey:name,ageKey:age},
    en:{nameKey:name,ageKey:age},
    }
   */
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
      ExtraKey.codeLangAr:{
      '1':"اختار اللغة",'2':"عربي",'3':"انجليزي",
      Strings.loginHeadKey:StringsAr.loginHead,
      Strings.loginBodyHeadKey:StringsAr.loginBodyHead,
      Strings.loginBodyMessageKey:StringsAr.loginBodyMessage,
      Strings.loginTitleUsernameKey:StringsAr.loginTitleUsername,
      Strings.loginTitlePasswordKey:StringsAr.loginTitlePassword,
      Strings.loginHintUsernameKey:StringsAr.loginHintUsername,
      Strings.loginHintPasswordKey:StringsAr.loginHintPassword,
      Strings.loginTextBtnKey:StringsAr.loginTextBtn,
      Strings.loginTitleForgetPasswordKey:StringsAr.loginTitleForgetPassword,
      Strings.loginTitleDoNotAccountKey:StringsAr.loginTitleDoNotAccount,
      Strings.loginTitleSignupKey:StringsAr.loginTitleSignup,
      Strings.loginTitleIsAlreadyAccountKey:StringsAr.loginTitleIsAlreadyAccount,
      Strings.emailTitleAccountKey:StringsAr.emailTitleAccount,
      Strings.emailHintAccountKey:StringsAr.emailHintAccount,
      Strings.phoneTitleAccountKey:StringsAr.phoneTitleAccount,
      Strings.phoneHintAccountKey:StringsAr.phoneHintAccount,
      Strings.checkEmailForgetPasswordKey:StringsAr.checkEmailForgetPassword,
      Strings.checkEmailMessageFgtPassKey:StringsAr.checkEmailMessageFgtPass,
      Strings.resetTitleKey:StringsAr.resetTitle,
      Strings.checkTitleKey:StringsAr.checkTitle,
      Strings.verificationCodeTitleKey:StringsAr.verificationCodeTitle,
      Strings.verifyCodeBodyTitleKey:StringsAr.verifyCodeBodyTitle,
      Strings.verifyCodeBodyMessageKey:StringsAr.verifyCodeBodyMessage,

      Strings.resetPasswordTitleKey:StringsAr.resetPasswordTitle,
      Strings.newPasswordTitleResetKey:StringsAr.newPasswordTitleReset,
      Strings.newPasswordHintResetKey:StringsAr.newPasswordHintReset,
      Strings.renewPasswordTitleResetKey:StringsAr.renewPasswordTitleReset,
      Strings.renewPasswordHintResetKey:StringsAr.renewPasswordHintReset,
      Strings.newPasswordBodyMessageResetKey:StringsAr.newPasswordBodyMessageReset,

      Strings.checkEmailTitleSignUpKey:StringsAr.checkEmailTitleSignUp,
      Strings.checkEmailBodyTitleSignUpKey:StringsAr.checkEmailBodyTitleSignUp,
      Strings.checkEmailBodyMessageSignUpKey:StringsAr.checkEmailBodyMessageSignUp,

      Strings.successTitleKey:StringsAr.successTitle,
      Strings.successfullyKey:StringsAr.successfully,
      Strings.successBodyTitleKey:StringsAr.successBodyTitle,

      Strings.alertTitleKey:StringsAr.alertTitle,
      Strings.alertExitMessageKey:StringsAr.alertExitMessage,
      Strings.alertBtnConfirmKey:StringsAr.alertBtnConfirm,
      Strings.alertBtnCancelKey:StringsAr.alertBtnCancel,
    },
    //================EN TR
    ExtraKey.codeLangEn:{'1':"Choose Language",'2':"Ar",'3':"En",
      Strings.loginHeadKey:StringsEn.loginHead,
      Strings.loginBodyHeadKey:StringsEn.loginBodyHead,
      Strings.loginBodyMessageKey:StringsEn.loginBodyMessage,
      Strings.loginTitleUsernameKey:StringsEn.loginTitleUsername,
      Strings.loginTitlePasswordKey:StringsEn.loginTitlePassword,
      Strings.loginHintUsernameKey:StringsEn.loginHintUsername,
      Strings.loginHintPasswordKey:StringsEn.loginHintPassword,
      Strings.loginTextBtnKey:StringsEn.loginTextBtn,
      Strings.loginTitleForgetPasswordKey:StringsEn.loginTitleForgetPassword,
      Strings.loginTitleDoNotAccountKey:StringsEn.loginTitleDoNotAccount,
      Strings.loginTitleSignupKey:StringsEn.loginTitleSignup,
      Strings.loginTitleIsAlreadyAccountKey:StringsEn.loginTitleIsAlreadyAccount,
      Strings.emailTitleAccountKey:StringsEn.emailTitleAccount,
      Strings.emailHintAccountKey:StringsEn.emailHintAccount,
      Strings.phoneTitleAccountKey:StringsEn.phoneTitleAccount,
      Strings.phoneHintAccountKey:StringsEn.phoneHintAccount,
      Strings.checkEmailForgetPasswordKey:StringsEn.checkEmailForgetPassword,
      Strings.checkEmailMessageFgtPassKey:StringsEn.checkEmailMessageFgtPass,
      Strings.resetTitleKey:StringsEn.resetTitle,
      Strings.checkTitleKey:StringsEn.checkTitle,
      Strings.verificationCodeTitleKey:StringsEn.verificationCodeTitle,
      Strings.verifyCodeBodyTitleKey:StringsEn.verifyCodeBodyTitle,
      Strings.verifyCodeBodyMessageKey:StringsEn.verifyCodeBodyMessage,

      Strings.resetPasswordTitleKey:StringsEn.resetPasswordTitle,
      Strings.newPasswordTitleResetKey:StringsEn.newPasswordTitleReset,
      Strings.newPasswordHintResetKey:StringsEn.newPasswordHintReset,
      Strings.renewPasswordTitleResetKey:StringsEn.renewPasswordTitleReset,
      Strings.renewPasswordHintResetKey:StringsEn.renewPasswordHintReset,
      Strings.newPasswordBodyMessageResetKey:StringsEn.newPasswordBodyMessageReset,

      Strings.checkEmailTitleSignUpKey:StringsEn.checkEmailTitleSignUp,
      Strings.checkEmailBodyTitleSignUpKey:StringsEn.checkEmailBodyTitleSignUp,
      Strings.checkEmailBodyMessageSignUpKey:StringsEn.checkEmailBodyMessageSignUp,

      Strings.successTitleKey:StringsEn.successTitle,
      Strings.successfullyKey:StringsEn.successfully,
      Strings.successBodyTitleKey:StringsEn.successBodyTitle,

      Strings.alertTitleKey:StringsEn.alertTitle,
      Strings.alertExitMessageKey:StringsEn.alertExitMessage,
      Strings.alertBtnConfirmKey:StringsEn.alertBtnConfirm,
      Strings.alertBtnCancelKey:StringsEn.alertBtnCancel,

    }
  };

}