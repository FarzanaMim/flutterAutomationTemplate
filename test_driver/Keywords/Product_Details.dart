import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';

void goToProductDetails (FlutterDriver driver) async {

  await driver.tap(goToProductDetailsPage);
}

void productDetailsElementCheck (FlutterDriver driver) async {
  
  expect(await driver.getText(productDetailsTitle), productDetailsTitleText);
  await driver.waitFor(productDetailsProductName);
  await driver.waitFor(productDetailsProductPrice);
  await driver.waitFor(productDetailsDescription);
  await driver.waitFor(productDetailsViewInWebButton);
  expect(await driver.getText(productDetailsViewInWebButton), productDetailsViewWebButtonText);
}

void goBackToHome (FlutterDriver driver) async {
  
  await driver.tap(productDetailsBackButton);
  expect(await driver.getText(title), titleText);
}