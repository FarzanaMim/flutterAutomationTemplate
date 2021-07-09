import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/common_methods.dart' as common;
import '../Keywords/Favorite_items.dart' as favourite;

void main() {
  group('Favourite Test - ', ()
  {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });

    test("Splash Page", () async => await common.openApp(driver));

    test("Going to Favourite Screen", () async => await favourite.goToFavouriteScreen(driver));

    test("Favourite Screen content Elements check", () async => await favourite.uiVerificationsOfContentTabsPage(driver));

    //test("Favourite Screen present Elements check", () async => await favourite.uiVerificationsOfPresentTabsPage(driver));

    //test("Favourite Screen product Elements check", () async => await favourite.uiVerificationsOfProductTabsPage(driver));

    //test("Favourite Screen coupon Elements check", () async => await favourite.uiVerificationsOfCouponTabsPage(driver));

    /*Enable all this when all these elements will be shown in app*/

  });
}