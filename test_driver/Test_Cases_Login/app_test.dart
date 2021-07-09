import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/UIElementsConstants.dart';
import '../Keywords/common_methods.dart' as common;
import '../Keywords/LogIn.dart' as login;

void main() {
  group('Login Test - ', ()
  {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });
    test("Splash Page", () async =>await common.openApp(driver));

    test("Opening app and go to home ", () async =>await login.goToHomeScreen(driver));

    test(" go to my page screen", () async =>await login.goToMyPageScreen(driver));

    test(" go to login screen", () async =>await login.goToLoginFromRegistration(driver));

    //test(" Login screen UI Verification", () async =>await login.uiVerificationLogin(driver));

    test(" Empty email and password", () async =>await login.loginEmpty(driver));

    test(" Empty email and password", () async =>await login.loginWrongEmailCorrectPassword(driver));

    test(" Empty email and password", () async =>await login.loginCorrectEmailWrongPassword(driver));

    test(" Login to app", () async =>await login.loginToApp(driver, loginEmail, loginPassword));


  });
}