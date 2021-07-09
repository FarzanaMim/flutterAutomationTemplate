import 'dart:math';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';



  void justWait({@required int numberOfSeconds}) async {
    await Future.delayed(Duration(seconds: numberOfSeconds));
  }


String mailgenerate() {
  var rng = new Random();
  var number=rng.nextInt(100).toString();
  var mailAdres="mimfarzana91+";
      var mailaddress2="@gmail.com";
 var emailId= mailAdres + number + mailaddress2;

 return emailId;
}

final password="Password123@";

dynamic goToRegistrationScreen(FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(homePageButton);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("TutorialView"));
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(tutorialSkipButtonIS);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(myPagelink);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(registrationButton);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("RegistrationView"));
  });
}

dynamic uiVerification1(FlutterDriver driver) async{

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(title), titleText);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(subTiltle), subtileText);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(boxImage1Text), boxtext1);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(boxImage2Text),boxtext2);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(emailLevel), emailLeveltext);
  });

  /*await driver.runUnsynchronized(() async {

    expect(await driver.getText(emailTextInput), mailtextboxPlaceholderText);
  });*/

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(submitbutton), submitbuttontext);
  });

 /* await driver.runUnsynchronized(() async {

    expect(await driver.getText(loginLink1), loginLink1Text);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(PolicyTermslink), PolicyTermslinkText);
  });*/






}

dynamic emailAddresNotSpecified(FlutterDriver driver)async{
  await justWait(numberOfSeconds: 5);
  await driver.runUnsynchronized(() async {
    await driver.tap(emailTextInput);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(submitbutton);
  });
  await justWait(numberOfSeconds: 5);
  await driver.runUnsynchronized(() async {
    expect(await driver.getText(Alertmessage), AlertmessageText);
  });


}

dynamic emailAddresNotInFormat(FlutterDriver driver)async{
  await driver.runUnsynchronized(() async {
    await driver.tap(emailTextInput);
  });

  await driver.enterText("mimfargmail.com");
  await driver.runUnsynchronized(() async {
    await driver.waitForAbsent(find.ancestor(of: find.text('メールアドレスを入力して下さい。'), matching: find.byType('CustomTextInputFiled')));
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(submitbutton);
  });
  await justWait(numberOfSeconds: 5);
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(Alertmessage), AlertmessageText);
  });

  await driver.enterText("mimfarzana91@gmailcom");
  await driver.runUnsynchronized(() async {

    await driver.tap(submitbutton);
  });
  await justWait(numberOfSeconds: 5);
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(Alertmessage), AlertmessageText);
  });


}

dynamic emailAddresRegisteredScenario( FlutterDriver driver) async{
  await driver.runUnsynchronized(() async {
    await driver.tap(emailTextInput);
  });
  await driver.enterText("mimfarzana91@gmail.com");
  await driver.runUnsynchronized(() async {

    await driver.tap(submitbutton);
  });
  await justWait(numberOfSeconds: 5);
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MaterialApp"));
  });
  await justWait(numberOfSeconds: 10);


  await driver.runUnsynchronized(() async {

    await driver.waitFor(accountsAlreadyExist);
  });


  await driver.runUnsynchronized(() async {

    await driver.tap(okButton);
  });

}

dynamic validemailAddresRegistration(FlutterDriver driver) async{
  String mailAdres=mailgenerate();
  await driver.runUnsynchronized(() async {

    await driver.tap(emailTextInput);
  });

  await driver.enterText(mailAdres);
  await driver.runUnsynchronized(() async {

    await driver.tap(submitbutton);
  });
  await justWait(numberOfSeconds: 5);
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MaterialApp"));
  });
  await justWait(numberOfSeconds: 10);

  await driver.runUnsynchronized(() async {

    await driver.waitFor(RegistrationPopUpHeader);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(popUpMessage), popUpMessageText);
  });

  await driver.runUnsynchronized(() async {

    await driver.tap(okButton);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("RegistrationView"));
  });
  await justWait(numberOfSeconds: 10);

  await driver.runUnsynchronized(() async {

    await driver.waitForAbsent(RegistrationPopUpHeader);
  });


}



/*void passwordSet(FlutterDriver driver,String url) async{
  launch(url);
  await driver.tap(passwordfield);
  await driver.enterText(password);
  await driver.tap(submitButton);

}*/

