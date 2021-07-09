import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Navigation_Bar.dart' as nav;
import '../Keywords/common_methods.dart' as common;




void main() {
  group('Navigation Bar', ()
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

    test("Opening app and go to home with home navigation bar", () async =>await nav.goToHomeScreen(driver));

    test(" go to my favorite screen", () async =>await nav.goToFavoriteScreen(driver));

    test(" go to my page screen", () async =>await nav.goToMyPageScreen(driver));

  });
}