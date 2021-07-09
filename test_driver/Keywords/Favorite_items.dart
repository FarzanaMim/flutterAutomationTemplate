import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';

void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic goToFavouriteScreen (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(homePageButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("TutorialView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(tutorialSkipButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.tap(favouritePage);
  });

  //await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("FavouriteView"));
  });

}



dynamic uiVerificationsOfContentTabsPage(FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(goToContentDetails);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("ContentView"));
  });

  await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentDetailsTitle), contentDetailsTitleText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentName), contentNameText);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentDetailsLevel1), contentDetailsLevel1Text);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentDetailsLevel2), contentDetailsLevel2Text);
  });
}

dynamic uiVerificationsOfProductTabsPage(FlutterDriver driver) async{

  await driver.tap(productTab);
  await driver.waitFor(favouriteTitle);
  expect(await driver.getText(favouriteTitle), favouriteTitleText);
  expect(await driver.getText(productTab), productTabText);
  await driver.waitFor(sampleProduct1);
  await driver.waitFor(productDetails);
  await driver.waitFor(couponImage);
  await driver.waitFor(ProductprogramName);
  await driver.waitFor(ProductprogramIcon);
  await driver.tap(sampleProduct1);
  expect(await driver.getText(productDetailsTitle), productDetailsTitleText);
  await driver.tap(couponDetailsBackButton);
  expect(await driver.getText(favouriteTitle), favouriteTitleText);


}

dynamic uiVerificationsOfCouponTabsPage(FlutterDriver driver) async{

  await driver.tap(couponTab);
  await driver.waitFor(favouriteTitle);
  expect(await driver.getText(favouriteTitle), favouriteTitleText);
  expect(await driver.getText(couponTab), couponTabText);
  await driver.waitFor(Usecoupon1);
  await driver.waitFor(CouponDetails);
  await driver.waitFor(couponImage);
  await driver.waitFor(CouponprogramName);
  await driver.waitFor(CouponProgramIcon);
  await driver.tap(Usecoupon1);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.tap(couponDetailsBackButton);
  expect(await driver.getText(favouriteTitle), favouriteTitleText);


}

dynamic uiVerificationsOfPresentTabsPage(FlutterDriver driver) async{

  await driver.tap(presentTab);
  await driver.waitFor(favouriteTitle);
  expect(await driver.getText(favouriteTitle), favouriteTitleText);
  expect(await driver.getText(presentTab), presentTabText);
  await driver.waitFor(Samplepresent1);
  await driver.waitFor(PresentDetails);
  await driver.waitFor(couponImage);
  await driver.waitFor(presentProgramName);
  await driver.waitFor(presentProgramIcon);
  await driver.tap(Samplepresent1);
  expect(await driver.getText(presentTitle), presentTitleText);
  await driver.tap(couponDetailsBackButton);
  expect(await driver.getText(favouriteTitle), favouriteTitleText);
  await driver.tap(couponDetailsBackButton);



}