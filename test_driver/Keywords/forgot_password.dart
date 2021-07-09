import 'package:flutter_driver/flutter_driver.dart' show FlutterDriver, find;
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';

void uiVerification1(FlutterDriver driver) async{
  expect(await driver.getText(forgotPassword_title), forgotPassword_titleText);
  expect(await driver.getText(forgotPassword_subtitle), forgotPassword_titleText);
  expect(await driver.getText(forgotPassword_Redlevel), forgotPassword_RedlevelText);
  expect(await driver.getText(forgotPassword_Textboxlevel), forgotPassword_TextboxlevelText);
  expect(await driver.getText(forgotPassword_textboxPlaceholder), forgotPassword_textboxPlaceholderText);
  expect(await driver.getText(forgotPassword_SubmitButton), forgotPassword_SubmitButtonText);
  expect(await driver.getText(forgotPassword_fotterLink1), forgotPassword_fotterLink1Text);
  expect(await driver.getText(forgotPassword_footerlink2), forgotPassword_footerlink2Text);
  expect(await driver.getText(forgotPassword_footerLink3), forgotPassword_footerLink3Text);

}

void emailAddresNotSpecified( FlutterDriver driver) async{
  await driver.tap(forgotPassword_textbox);
  await driver.tap(submitbutton);
  expect(await driver.getText(forgotPasswordAlertmessage), AlertmessageText);


}

void emailAddresNotInFormat(FlutterDriver driver) async{
  await driver.tap(emailTextInput);
  await driver.enterText("mimfargmail.com");
  await driver.waitForAbsent(find.ancestor(of: find.text('メールアドレスを入力して下さい。'), matching: find.byType('CustomTextInputFiled')));
  await driver.tap(submitbutton);
  expect(await driver.getText(Alertmessage), AlertmessageText);

  await driver.enterText("mimfarzana91@gmailcom");
  await driver.tap(submitbutton);
  expect(await driver.getText(Alertmessage), AlertmessageText);

}

void NotRegisteredemailAddres(FlutterDriver driver) async{
  await driver.tap(forgotPassword_textbox);
  await driver.enterText("testTV@gmail.com");
  await driver.tap(submitbutton);
  await driver.waitFor(forgotPasswordPopUpHeader);
  expect(await driver.getText(forgotPasswordPopUpHeader), forgotPasswordPopUpHeaderText);
  expect(await driver.getText(notRegisteredMail), notRegisteredMailText);
  expect(await driver.getText(forgotPasswordOkButton), forgotPasswordokButtonText);
  await driver.tap(forgotPasswordOkButton);
  await driver.waitForAbsent(forgotPasswordPopUpHeader);


}

void RegisteredemailAddres(FlutterDriver driver) async{

  await driver.tap(forgotPassword_textbox);
  await driver.enterText("mimfarzana91@gmail.com");
  await driver.tap(forgotPassword_SubmitButton);
  await driver.waitFor(RegistrationPopUpHeader);
  expect(await driver.getText(RegistrationPopUpHeader), RegistrationPopUpHeaderText);
  expect(await driver.getText(popUpMessage), popUpMessageText);
  expect(await driver.getText(forgotPasswordOkButton), forgotPasswordokButtonText);
  await driver.tap(okButton);
  await driver.waitForAbsent(RegistrationPopUpHeader);
}

void linkClickAble(FlutterDriver driver) async{
  await driver.tap(forgotPassword_footerlink2);


}

void gotoForgotPage(FlutterDriver driver) async{
  await driver.tap(loginlink2);
  await driver.tap(forgotPassPageLink);
}

void goBackToLoginpage( FlutterDriver driver) async{
  await driver.tap(forgotPasswordBackButton);
  await driver.waitFor(FloginTitle);
  expect(await driver.getText(FloginTitle), FloginTitleText);
  await driver.tap(forgotPassPageLink);
  expect(await driver.getText(forgotPassword_title), forgotPassword_titleText);
}

