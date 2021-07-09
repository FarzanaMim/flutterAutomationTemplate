import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';

/*Login*/
void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic goToHomeScreen (FlutterDriver driver) async {
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
    await justWait(numberOfSeconds: 5);
  });
}

dynamic goToMyPageScreen (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(myPagelink);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(find.text("forgot"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
    await justWait(numberOfSeconds: 3);
  });
}

dynamic goToLoginFromRegistration (FlutterDriver driver) async{

  await driver.runUnsynchronized(() async {
    await driver.tap(registrationButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("RegistrationView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(goToLoginLink2);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("LoginView"));
  });
}

/*Login Ui Verification*/
dynamic uiVerificationLogin(FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginSubTitle), loginSubTitleText);
  });
  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginEmailLabel), loginEmailLabelText);
  });
  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginPasswordLabel), loginPasswordLabelText);
  });
  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginButton), loginButtonText);
  });
  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginForgetPasswordLink), loginForgetPasswordText);
  });
}

dynamic loginToApp(FlutterDriver driver,String mail,String password) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(loginEmailTextInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(mail);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginPasswordInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(password);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginButton);
  });


}

dynamic loginEmpty (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(loginEmailTextInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(loginEmailEmpty);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginPasswordInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(loginPasswordEmpty);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginButton);
  });

  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginAlertWrongEmailPassword), loginAlertMessage);
  });
}

dynamic loginWrongEmailCorrectPassword (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(loginEmailTextInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(loginEmailInvalid);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginPasswordInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(loginPassword);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginButton);
  });

  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginAlertWrongEmailPassword), loginAlertMessage);
  });
}

dynamic loginCorrectEmailWrongPassword (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(loginEmailTextInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(loginEmail);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginPasswordInput);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(loginPasswordInvalid);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(loginButton);
  });

  await driver.runUnsynchronized(() async {
    expect (await driver.getText(loginAlertWrongEmailPassword), loginAlertMessage);
  });
}

/*
void loginWrongEmailWrongPassword (FlutterDriver driver) async {

  await driver.tap(loginEmailTextInput);
  await driver.enterText(loginEmailWrong);
  await driver.tap(loginPasswordInput);
  await driver.enterText(loginPasswordWrong);
  await driver.tap(loginButton);
  expect (await driver.getText(loginAlertMessageObj), loginAlertMessage);
}
 */

dynamic backToRegistrationPage (FlutterDriver driver) async {

  await driver.tap(loginBackButton);
  //checking the registration page title
  expect(await driver.getText(title), titleText);
}