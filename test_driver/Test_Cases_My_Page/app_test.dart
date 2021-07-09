import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/my_page.dart' as mypage;
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
    test("Going to myPage  Screen",() async =>await mypage.goToMyPageViewScreen(driver));

    test("Verify UI elements are presents as expected", () async =>await  mypage.MyPageuiVerification1(driver));
    /*test("Verify -Push Notification Settings Link Verification", () async =>await mypage.PushNotificationSettingsLinkVerification(driver));

    test("Verify - Notice link Verification", () async =>await mypage.NoticelinkVerification(driver));



    test("Verify Terms & Conditions link Verification", () async => await  mypage.TermsConditionlinkVerification(driver));




    test("Verify Privecy Policy link Verification", () async => await  mypage.PrivecyPolicylinkVerification(driver));




  test('Verify that after clicking registration link from mail ,password setting screen of APP will open and also Verify user able to register by setting password successfully', () {
      String urlLink="tvapp://open.tvapp.com/v1/check-token?token=eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJlbWFpbC12ZXJpZmljYXRpb24iLCJ1c2VyX25hbWUiOjk0LCJlbWFpbCI6Im1pbWZhcnphbmE5MSsyQGdtYWlsLmNvbSIsImV4cCI6MTU5NTMzMzU5N30.R3bzRf6_03daLm8XToCzJ9_SFUVy0xqVYodmNv_dWPY9uX01ajQQE9J8EyRBBlxXTibuoUna0miDcoWlG9uJY00zAwaX7dte3KpiDDD-3mrXGZ9xXI1A6SDV-2l0aTQhfVa3lVxQds2-10EFhqWkmrJlSOEIQZC6cUKQpdDeXY_mLPASpzUdT0V9rWAHThvY8QnqSgvIRViWONpJkp5znV709sp5k4hycLLm1m8OmraoSxQm_r7bC-91mMgaXGCaeopoAdGC_MTPw9-UvQVAR-2dLmJyEts4VwoslYISqfqmIZvGWPxr6qoBXi2OMsJRRHkp0M0lXANY6VCgTPTSKw";
      regis.passwordSet(driver, urlLink);

    }
    );

   */
  });
}