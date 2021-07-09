
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';





void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}



dynamic goToMyPageViewScreen(FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(homePageButton);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(myPagelink);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });

}

dynamic MyPageuiVerification1(FlutterDriver driver) async{

  /*await driver.runUnsynchronized(() async {

    expect(await driver.getText(myPageTitle), myPageTitleText);
  });

  await driver.runUnsynchronized(() async {

    await driver.waitFor(starIcon);
  });*/
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(point), pointText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(requiredText),requiredTexts);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(registrationButton), registrationButtonText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(MyPageloginText1), MyPageloginTexts1);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(MyPageloginText2), MyPageloginTexts2);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(couponListtitle), couponListtitleText);
  });

  await driver.runUnsynchronized(() async {

    await driver.waitFor(MyPagecouponImage);
  });
  await driver.runUnsynchronized(() async {

    await driver.waitFor(MypageCouponDate);
  });
  await driver.runUnsynchronized(() async {

    await driver.waitFor(MyPageCouponName);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(SettingContact), SettingContactText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(ContactUs), MyPageContactUsText);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(PushNotificationSettings), PushNotificationSettingsText);
  });

  await driver.runUnsynchronized(() async {

    await driver.scrollIntoView(others);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(Notice), NoticeText);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(TermsOfService), MyPageTermsOfServiceText);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(privacyPolicy), MyPageprivacyPolicyText);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(others), othersText);
  });
  await driver.runUnsynchronized(() async {

    expect(await driver.getText(withdrawal), withdrawalText);
  });
}

dynamic PushNotificationSettingsLinkVerification(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.tap(PushNotificationSettings);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitForAbsent(myPageTitle);
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(myPageTitle);
  });

}

dynamic NoticelinkVerification(FlutterDriver driver) async{
  await driver.runUnsynchronized(() async {
    await driver.tap(Notice);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("NotificationView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(NoticePageTitle);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(productDetailsBackButton);

  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(myPageTitle);
  });


}

dynamic TermsConditionlinkVerification(FlutterDriver driver) async{
  await driver.runUnsynchronized(() async {
    await driver.tap(TermsOfService);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("TermsOfUseView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(termsOfUseTitle);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(productDetailsBackButton);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(myPageTitle);
  });


}

dynamic PrivecyPolicylinkVerification(FlutterDriver driver) async{
  await driver.runUnsynchronized(() async {
    await driver.tap(privacyPolicy);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("PrivacyPolicyView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(privacyPolicyTitle);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(productDetailsBackButton);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(myPageTitle);
  });


}

