import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Registration.dart' as regis;
import '../Keywords/common_methods.dart' as common;




void main() {
  group('Flutter Driver demo', ()
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
    test("Going to registration  Screen",() async =>await regis.goToRegistrationScreen(driver));

    test("Verify UI elements all as well place holder are presents as expected", () async =>await  regis.uiVerification1(driver));
    test("Verify - if the email address is not specified then a warning is appearing ", () async =>await regis.emailAddresNotSpecified(driver));

    test("Verify - if the email address is not in format then a warning is appearing and also Verify - After starting the type placeholder is appearing no more. ", () async =>await regis.emailAddresNotInFormat(driver));


    test("Verify alert message for If your email address is already registered scenario", () async => await  regis.emailAddresRegisteredScenario(driver));




    test("Verify after giving valid mail id & clicking on Register button , a popup message Appeared as expected as well as after clicking ok button popup message will be closed", () async => await  regis.validemailAddresRegistration(driver));




    /*test('Verify that after clicking registration link from mail ,password setting screen of APP will open and also Verify user able to register by setting password successfully', () {
      String urlLink="tvapp://open.tvapp.com/v1/check-token?token=eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJlbWFpbC12ZXJpZmljYXRpb24iLCJ1c2VyX25hbWUiOjk0LCJlbWFpbCI6Im1pbWZhcnphbmE5MSsyQGdtYWlsLmNvbSIsImV4cCI6MTU5NTMzMzU5N30.R3bzRf6_03daLm8XToCzJ9_SFUVy0xqVYodmNv_dWPY9uX01ajQQE9J8EyRBBlxXTibuoUna0miDcoWlG9uJY00zAwaX7dte3KpiDDD-3mrXGZ9xXI1A6SDV-2l0aTQhfVa3lVxQds2-10EFhqWkmrJlSOEIQZC6cUKQpdDeXY_mLPASpzUdT0V9rWAHThvY8QnqSgvIRViWONpJkp5znV709sp5k4hycLLm1m8OmraoSxQm_r7bC-91mMgaXGCaeopoAdGC_MTPw9-UvQVAR-2dLmJyEts4VwoslYISqfqmIZvGWPxr6qoBXi2OMsJRRHkp0M0lXANY6VCgTPTSKw";
      regis.passwordSet(driver, urlLink);

    }
    );
    test('Verify user able to login with newly registered mail & password', () {
      String mailAdres=regis.mailgenerate();
      //loginToApp(driver,mailAdres,regis.password);

    }
    );

     */





  });
}
