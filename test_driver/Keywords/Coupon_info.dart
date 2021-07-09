import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';

void uiVerificationUsedCoupon(FlutterDriver driver) async{
  await driver.waitFor(couponImage);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(couponName);
  expect(await driver.getText(UsedCoupon3), UsedcouponNameText);
  await driver.waitFor(couponDetails);
  await driver.waitFor(couponDate);
  expect(await driver.getText(couponDate), couponDateText);
  await driver.waitFor(Max_number_coupon_acquisition);
  expect(await driver.getText(Max_number_coupon_acquisition), Max_number_coupon_acquisitionText);
  await driver.waitFor(favourateIcon);
  await driver.tap(favourateIcon);
  await driver.waitFor(getCouponButton);
  await driver.tap(getCouponButton);
  await driver.waitFor(couponusedPopupMsg);
  expect(await driver.getText(couponusedPopupMsg), couponusedPopupMsgText);
  expect(await driver.getText(getCouponPopOkay), getCouponPopOkayText);
  await driver.tap(getCouponPopOkay);
  await driver.scrollIntoView(howToUseLevel);
  await driver.waitForAbsent(couponPrecautions);
  expect(await driver.getText(getCouponButton), usedCouponButtonText);
  await driver.waitFor(availableStores);
  expect(await driver.getText(availableStores), availableStoresText);
  await driver.waitFor(availableStores1);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse2);
  expect(await driver.getText(howToUseLevel), howToUseLevelText);

  expect(await driver.getText(howToUseDetails), howToUseDetailsText);


}

void uiVerificationGetCoupon(FlutterDriver driver) async{
  await driver.waitFor(couponImage);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(Getcoupon2);
  expect(await driver.getText(Getcoupon2), Getcoupon2NameText);
  await driver.waitFor(couponDetails);
  await driver.waitFor(couponDate);
  expect(await driver.getText(couponDate), couponDateText);
  await driver.waitFor(Max_number_coupon_acquisition);
  expect(await driver.getText(Max_number_coupon_acquisition), Max_number_coupon_acquisitionText);
  await driver.waitFor(favourateIcon);
  await driver.tap(favourateIcon);
  await driver.scrollIntoView(howToUseLevel);
  await driver.waitFor(getCouponButton);
  await driver.waitForAbsent(couponPrecautions);
  expect(await driver.getText(getCouponButton), getCouponButtonText);
  await driver.waitFor(availableStores);
  expect(await driver.getText(availableStores), availableStoresText);
  await driver.waitFor(availableStores1);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse2);
  expect(await driver.getText(howToUseLevel), howToUseLevelText);

  expect(await driver.getText(howToUseDetails), howToUseDetailsText);


}
void uiVerificationUseCoupon(FlutterDriver driver) async{
  await driver.waitFor(couponImage);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(Usecoupon1);
  expect(await driver.getText(Usecoupon1), Usecoupon1NameText);
  await driver.waitFor(couponDetails);
  await driver.waitFor(couponDate);
  expect(await driver.getText(couponDate), couponDateText);
  await driver.waitFor(favourateIcon);
  await driver.tap(favourateIcon);
  await driver.waitFor(getCouponButton);
  await driver.scrollIntoView(howToUseLevel);
  expect(await driver.getText(getCouponButton), useCouponButtonText);
  expect(await driver.getText(couponPrecautions), couponPrecautionsText);
  await driver.waitFor(availableStores);
  expect(await driver.getText(availableStores), availableStoresText);
  await driver.waitFor(availableStores1);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse2);
  expect(await driver.getText(howToUseLevel), howToUseLevelText);

  expect(await driver.getText(howToUseDetails), howToUseDetailsText);


}

void useCouponBarCodePageVerification( FlutterDriver driver) async{
  await driver.tap(getCouponButton);
  await driver.waitFor(useCouponBarCodeImage);
  expect(await driver.getText(useBarCodeButton), useBarCodeButtonText);
  driver.tap(useBarCodeButton);
  driver.waitForAbsent(useCouponBarCodeImage);

}

void couponNotAvailablePopupVerification( FlutterDriver driver) async{
  await driver.tap(getCouponButton);
  await driver.waitFor(getCouponPopHeader);
  expect(await driver.getText(getCouponPopHeader), getCouponPopHeaderText);
  expect(await driver.getText(getCouponPopDeatils), getCouponPopDeatilsText);
  expect(await driver.getText(getCouponPopOkay), getCouponPopOkayText);
  driver.tap(getCouponPopOkay);
  driver.waitForAbsent(getCouponPopHeader);

}

void uiVerificationNotAvailableCoupon(FlutterDriver driver) async{
  await driver.waitFor(couponImage);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(NotavailableCoupon4);
  expect(await driver.getText(NotavailableCoupon4), NotavailableCoupon4Text);
  await driver.waitFor(couponDetails);
  await driver.waitFor(couponDate);
  expect(await driver.getText(couponDate), couponDateText);
  await driver.waitFor(favourateIcon);
  await driver.tap(favourateIcon);
  await driver.waitForAbsent(getCouponButton);
  expect(await driver.getText(couponExpired), couponExpireText);
  await driver.scrollIntoView(howToUseLevel);
  await driver.waitFor(availableStores);
  expect(await driver.getText(availableStores), availableStoresText);
  await driver.waitFor(availableStores1);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse2);
  expect(await driver.getText(howToUseLevel), howToUseLevelText);

  expect(await driver.getText(howToUseDetails), howToUseDetailsText);


}

void uiVerificationUseCouponWithMaxCouponNumber(FlutterDriver driver) async{
  await driver.waitFor(couponImage);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(UseCouponWithMaxNumberCoupo6);
  expect(await driver.getText(UseCouponWithMaxNumberCoupo6), UseCouponWithMaxNumberCoupo6Text);
  await driver.waitFor(couponDetails);
  await driver.waitFor(couponDate);
  expect(await driver.getText(couponDate), couponDateText);
  await driver.waitFor(Max_number_coupon_acquisition);
  expect(await driver.getText(Max_number_coupon_acquisition), Max_number_coupon_acquisitionText100);
  await driver.waitFor(favourateIcon);
  await driver.tap(favourateIcon);
  await driver.waitFor(getCouponButton);
  expect(await driver.getText(getCouponButton), useCouponButtonText);
  await driver.scrollIntoView(howToUseLevel);
  expect(await driver.getText(couponPrecautions), couponPrecautionsText);
  await driver.waitFor(availableStores);
  expect(await driver.getText(availableStores), availableStoresText);
  await driver.waitFor(availableStores1);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse2);
  expect(await driver.getText(howToUseLevel), howToUseLevelText);

  expect(await driver.getText(howToUseDetails), howToUseDetailsText);


}

void uiVerificationUseCoupon_NonRegisteredUser(FlutterDriver driver) async{
  await driver.waitFor(couponImage);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(Usecoupon1);
  expect(await driver.getText(Usecoupon1), Usecoupon1NameText);
  await driver.waitFor(couponDetails);
  await driver.waitFor(couponDate);
  expect(await driver.getText(couponDate), couponDateText);
  await driver.waitFor(favourateIcon);
  await driver.tap(favourateIcon);
  await driver.waitFor(getCouponButton);
  expect(await driver.getText(getCouponButton), getCouponButtonText);
  await driver.tap(getCouponButton);
  expect(await driver.getText(getCouponButton), memberRegisbuttonText);
  await driver.tap(getCouponButton);
  expect(await driver.getText(title), titleText);
  await driver.tap(couponDetailsBackButton);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.scrollIntoView(howToUseLevel);
  expect(await driver.getText(loginDetailsLink), loginDetailsLinkText);
  await driver.tap(goToLoginLink);
  expect (await driver.getText(loginTitle), loginTitleText);
  await driver.tap(couponDetailsBackButton);
  expect(await driver.getText(couponTitle), couponTitleText);
  await driver.waitFor(availableStores);
  expect(await driver.getText(availableStores), availableStoresText);
  await driver.waitFor(availableStores1);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse);
  expect(await driver.getText(notesOnUse), notesOnUseText);
  await driver.waitFor(notesOnUse2);
  expect(await driver.getText(howToUseLevel), howToUseLevelText);

  expect(await driver.getText(howToUseDetails), howToUseDetailsText);


}
