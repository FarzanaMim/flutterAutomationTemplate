import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';



void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic goToPresentApp (FlutterDriver driver) async {

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
    await driver.tap(moreButton);
  });

  await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {
    await driver.tap(presentInfoButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("PresentDetailView"));
  });
}






dynamic presentAppElementCheck (FlutterDriver driver) async {

  await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(presentAppTitle), presentAppTitleText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(presentAppPresentName), presentAppPresentNameText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(presentAppPresentDetails), presentAppPresentDetailsText);
  });

  //await driver.waitFor(presentAppDeadline);
  //await driver.waitFor(presentAppWarning);

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(presentAppWarning), presentAppWarning1Text);
  });

}

dynamic presentAppRegButton (FlutterDriver driver) async {

  //await driver.scrollIntoView(presentInfoRegistrationButton);

  await driver.runUnsynchronized(() async {
    await driver.tap(presentInfoRegistrationButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("RegistrationView"));
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(title), titleText);
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("PresentDetailView"));
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(presentAppTitle), presentAppTitleText);
  });

}

dynamic goBackToHome (FlutterDriver driver) async {

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
  });

}


/*
void presentAppElementCheckWithoutLogin (FlutterDriver driver) async {

  expect(await driver.getText(presentAppTitle), presentAppTitleText);
  await driver.waitFor(presentAppImage);
  await driver.waitFor(presentAppPresentName);
  expect(await driver.getText(presentAppPresentName), presentAppPresentNameText);
  await driver.waitFor(presentAppPresentDetails);
  await driver.waitFor(presentAppDeadline);
  expect(await driver.getText(presentAppWarning), presentAppWarning1Text);
  await driver.waitFor(presentAppRegButton);
  expect(await driver.getText(presentAppRegButton), presentAppRegButtonText);
  expect(await driver.getText(presentAppFooter), presentAppFooterText);
  
}

void presentAppExpiredElementCheck (FlutterDriver driver) async {

  expect(await driver.getText(presentAppTitle), presentAppTitleText);
  await driver.waitFor(presentAppImage);
  await driver.waitFor(presentAppPresentName);
  expect(await driver.getText(presentAppPresentName), presentAppPresentNameText);
  await driver.waitFor(presentAppPresentDetails);
  await driver.waitFor(presentAppDeadline);
  await driver.waitFor(presentAppExpire);
  expect(await driver.getText(presentAppExpire), presentAppExpireWarningText);
}

void presentAppApplicationButton (FlutterDriver driver) async {

  await driver.tap(presentAppButton);
  expect(await driver.getText(presentAppPopUp1), presentAppPopUpText1);
  await driver.tap(presentAppPopUpYesButton);
  expect(await driver.getText(presentAppPopUp2), presentAppPopUpText2);
  expect(await driver.getText(presentAppPopUp2Body), presentAppPopUp2BodyText);
  await driver.tap(presentAppPopUpYesButton);
  await driver.tap(presentAppButton);
  expect(await driver.getText(presentAppPopUp1), presentAppPopUpText1);
  await driver.tap(presentAppPopUpNoButton);

}



void presentAppClickRegButton (FlutterDriver driver) async {
  
  await driver.tap(presentAppRegButton);
  expect(await driver.getText(title), titleText);
  await driver.tap(presentAppBackButton);
  expect(await driver.getText(presentAppTitle), presentAppTitleText);
  
}

void presentAppClickLoginLink (FlutterDriver driver) async {

  await driver.tap(presentAppLoginLink);
  expect(await driver.getText(loginTitle), loginTitleText);
  await driver.tap(presentAppBackButton);
  expect(await driver.getText(presentAppTitle), presentAppTitleText);

}

void goBackToHome (FlutterDriver driver) async {

  await driver.tap(presentAppBackButton);
  expect(await driver.getText(title), titleText);
}

void presentAppPresentClaim (FlutterDriver driver) async {

  await driver.tap(presentAppButton);
  expect(await driver.getText(presentAppPopUp1), presentAppPopUpText1);
  await driver.tap(presentAppPopUpYesButton);
  await driver.waitFor(presentAppPopUp3);
  await driver.tap(presentAppPopUp3LaterButton);
  await driver.tap(presentAppButton);
  expect(await driver.getText(presentAppPopUp1), presentAppPopUpText1);
  await driver.tap(presentAppPopUpYesButton);
  await driver.tap(presentAppPopUp3RegButton);

} */