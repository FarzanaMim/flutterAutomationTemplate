import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Product_Details.dart' as details;
import '../Keywords/LogIn.dart' as login;
import '../Object_Repository/UIElementsConstants.dart';


void main() {
  group('Product Details - ', ()
  {
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
    });*/

    test('login to app', () async {
      login.loginToApp(driver, loginEmail, loginPassword);
    });

    test('Going to product details page', () async {
      details.goToProductDetails(driver);
    });

    test('Checking all elements Test rail: C27869, C27871, C27872, C27873, C27875, C27876, C27877, ', () async {
      details.productDetailsElementCheck(driver);
    });

    test('back to home screen', () async {
      details.goBackToHome(driver);
    });


  });
}