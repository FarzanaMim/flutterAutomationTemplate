import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Coupon_info.dart' as couponInfo;
import '../Keywords/LogIn.dart' as login;
import '../Object_Repository/xpath_library.dart';




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

    /*test('go to login page', () async {
      login.goToLoginScreen(driver);
      login.loginToApp(driver, "user2@example.com", "Password123@");
    });*/

      test('Verify UI elements of use Coupon page all are presents as expected', () async {



        driver.tap(favouriteItemsLink);
        driver.tap(couponTab);
        driver.tap(Usecoupon1);
        couponInfo.uiVerificationUseCoupon(driver);

      });
    test('Verify UI elements of Use Coupon barCode image popUp page all are presents as expected,and this will cover testcase-()', () async {

      driver.scrollIntoView(getCouponButton);
      couponInfo.useCouponBarCodePageVerification(driver);


    });

    test('Verify UI elements of  get Coupon page all are presents as expected,and this will cover testcase-()', () async {

      driver.tap(couponDetailsBackButton);
      driver.scrollIntoView(Getcoupon2);
      driver.tap(Getcoupon2);
      couponInfo.uiVerificationGetCoupon(driver);


    });

    test('Verify UI elements of  Coupon not available popUp page all are presents as expected,and this will cover testcase-()', () async {

      couponInfo.couponNotAvailablePopupVerification(driver);
      driver.tap(couponDetailsBackButton);


    });

   test('Verify UI elements of usedCoupon page all are presents as expected', () async {


      driver.tap(couponDetailsBackButton);
      driver.scrollIntoView(UsedCoupon3);
      driver.tap(UsedCoupon3);
      couponInfo.uiVerificationUsedCoupon(driver);

    });

    test('Verify UI elements of NotAvailable Coupon page all are presents as expected', () async {


      driver.tap(couponDetailsBackButton);
      driver.scrollIntoView(NotavailableCoupon4);
      driver.tap(NotavailableCoupon4);
      couponInfo.uiVerificationNotAvailableCoupon(driver);

    });

    test('Verify UI elements of USe Coupon with Max number Coupon page all are presents as expected', () async {


      driver.tap(couponDetailsBackButton);
      driver.scrollIntoView(UseCouponWithMaxNumberCoupo6);
      driver.tap(UseCouponWithMaxNumberCoupo6);
      couponInfo.uiVerificationUseCouponWithMaxCouponNumber(driver);

    });









    });
}