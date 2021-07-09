import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/forgot_password.dart' as forgotPass;




void main() {
  group('Flutter Driver demo', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });

    test('Verify UI elements all as well place holder are presents as expected,and this will cover testcase-(C27749,C27750,C27751,C27756,C27760)', () async {

      forgotPass.gotoForgotPage(driver);
      forgotPass.uiVerification1(driver);

    });

    test('Verify - if the email address is not specified then a warning is appearing ', () {
      forgotPass.emailAddresNotSpecified(driver);

    }
    );

    test('Verify - if the email address is not in format then a warning is appearing and also Verify - After starting the type placeholder is appearing no more. ', () {
      forgotPass.emailAddresNotInFormat(driver);

    }
    );
    test('Verify after giving Not Registered mail & clicking on submit button , a popup message Appeared as expected as well as after clicking ok button popup message will be closed', () {
      forgotPass.NotRegisteredemailAddres(driver);

    }
    );
    test('Verify if the email address is correct the a pop-up is appearing with label title メールを確認して下さい (Please check your email and also cover testcase-(C27757,C27758,C27759)',(){
      forgotPass.RegisteredemailAddres(driver);
    });

    test('Verify after clicking `←` button login page appeared.',(){
      forgotPass.goBackToLoginpage(driver);
    });


    test('Verify `こちら is clickable.',(){
      forgotPass.linkClickAble(driver);
    });


  } );
}