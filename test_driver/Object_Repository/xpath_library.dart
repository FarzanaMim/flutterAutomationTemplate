import 'package:flutter_driver/flutter_driver.dart';


//firstConsentPage

final homePageButton=find.text('同意してはじめる');
/*Registration*/
final title=find.text('新規会員登録');
final subTiltle=find.text('会員登録でもっと楽しく!');
final boxImage1Text=find.text('プレゼント応募でグッズGET！');
final boxImage2Text=find.text('クーポンでお得に買い物！');
final emailLevel=find.text('メールアドレス');
final mailtextboxPlaceholder=find.ancestor(of: find.text('メールアドレスを入力して下さい。'), matching: find.byType('TextFormField'));
final emailTextInput = find.ancestor(of: find.text("メールアドレスを入力して下さい。"), matching: find.byType('TextFormField'));
final submitbutton=find.text('登録');
final loginLink1=find.text('すでにアカウントをお持ちの方はこちら');
final loginlink2=find.text('こちら');
final PolicyTermslink=find.text('プライバシーポリシー    利用規約');
//final TermsLink=find.text('利用規約');
final Alertmessage=find.text('メールアドレスまたはパスワードが正しくありません。再度入力して下さい。');
final accountsAlreadyExist=find.text('アカウントはすでに存在しています');
final okButton=find.text('はい');
final RegistrationPopUpHeader=find.text('メールを確認して下さい');
final popUpMessage=find.text('入力されたメールアドレスに認証用のURLを記載したメールをお送りしました');

//PasswordResetPAge
final passwordfield=find.byType("");
final submitButton=find.byType("");





/*Login*/
final loginTitle = find.bySemanticsLabel('ログイン');
final loginSubTitle = find.bySemanticsLabel('おかえりなさい') ;

final loginEmailLabel = find.text('メールアドレス');
//final loginEmailField = find.text('');
final loginEmailFieldPlaceholder = find.text('メールアドレスを入力してください');

final loginPasswordLabel = find.text('パスワード');
final loginPasswordPlaceholder = find.text('パスワードを入力してください');
//final loginPasswordField = find.text('');

final loginButton=find.text('ログイン');
final loginForgetPasswordLink = find.text('パスワードを忘れた方はこちら');

final goToLoginLink1 = find.text('こちら');
final goToLoginLink = find.text('ログイン');
final goToLoginLink2 = find.text('すでにアカウントをお持ちの方は');

//final loginEmailTextInput = find.ancestor(of: find.text("sample@miltoq.com"), matching: find.byType('CustomTextInputFiled'));
final loginPasswordInput = find.ancestor(of: find.text("パスワードを入力してください"), matching: find.byType('CustomTextInputFiled'));
final loginEmailTextInput = find.text('sample@miltoq.com');



final loginAlertMessageObj = find.ancestor(of: find.text("メールアドレスまたはパスワードが正しくありません。再度入力して下さい。"), matching: find.byType('CustomTextInputFiled'));
final loginBackButton=find.bySemanticsLabel('←');

final loginAlertWrongEmailPassword = find.text('メールアドレスまたはパスワードが正しくありません。再度入力して下さい。');
final loginYesButton = find.text('はい');


//Forgot-Password
final forgotPassword_title=find.bySemanticsLabel('ログイン');
final forgotPassword_subtitle=find.text('パスワードをお忘れですか');
final forgotPassword_Redlevel=find.text('アカウントに登録されているメールアドレスをご入力ください。 パスワード再設定用メールを送信いたします。');
final forgotPassword_Textboxlevel=find.text('メールアドレスを入力してください');
final forgotPassword_textbox=find.ancestor(of: find.byType('TextFormField'), matching: find.byType('CustomTextInputFiled'));
final forgotPassword_textboxPlaceholder=find.ancestor(of: find.text('メールアドレスを入力して下さい。'), matching: find.byType('CustomTextInputFiled'));
final forgotPassword_SubmitButton=find.ancestor(of: find.text('送信'), matching: find.byType('CapsuleButton'));
final forgotPassword_fotterLink1=find.text('メールが届かない方は');
final forgotPassword_footerlink2=find.text('こちら');
final forgotPassword_footerLink3=find.text('からお問い合わせください\n（メーラーが起動します）');
final forgotPasswordAlertmessage=find.ancestor(of: find.text("メールアドレスまたはパスワードが正しくありません。再度入力して下さい。"), matching: find.byType('CustomTextInputFiled'));
final forgotPasswordPopUpHeader=find.bySemanticsLabel('エラー');
final notRegisteredMail=find.ancestor(of:find.text('No Registered Email'), matching: find.byType('MaterialApp'));

final forgotPasswordOkButton=find.ancestor(of:find.text('はい'), matching: find.byType('MaterialApp'));
final forgotPasswordBackButton=find.bySemanticsLabel('←');
final forgotPassPageLink=find.text('こちら');
final FloginTitle=find.bySemanticsLabel('ログイン');

final forgotPasswordokButton=find.ancestor(of:find.text('はい'), matching: find.byType('MaterialApp'));


//Privacy-policy
final privacyPolicyLink = find.text('プライバシーポリシー');
final privacyPolicyTitle = find.bySemanticsLabel('プライバシーポリシー');
final privacyPolicyBackButton=find.bySemanticsLabel('←');

//Terms-of-use
final termsOfUseLink = find.text('利用規約');
final termsOfUseTitle = find.bySemanticsLabel('プライバシーポリシー');
final termsOfUseBackButton=find.bySemanticsLabel('←');

//Product-Details
final productDetailsTitle = find.bySemanticsLabel('商品');
final productDetailsViewInWebButton = find.ancestor(of: find.text('商品'), matching: find.byType('CapsuleButton'));
final goToProductDetailsPage = find.text('Product Detail');
final productDetailsProductName = find.text('Sample Product 1');
final productDetailsProductPrice = find.text('100.0');
final productDetailsDescription = find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi. Nulla sodales, ligula egestas luctus commodo, justo lacus sagittis enim, ut lacinia massa lectus eget sapien.');
final productDetailsBackButton=find.bySemanticsLabel('←');


//Coupon_information
final couponImage=find.ancestor(of:find.byType('AspectRatio'), matching: find.text('OctoImage'));
final couponTitle=find.bySemanticsLabel('クーポン');
final couponName=find.ancestor(of:find.byType('Flexible'), matching: find.text('Sample Coupon 3'));
final couponDetails=find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi.');
final couponDate=find.ancestor(of:find.byType('CustomDateView'), matching: find.byType('Text'));
final Max_number_coupon_acquisition=find.ancestor(of:find.byType('Text'), matching: find.text('先着1名様'));
final getCouponButton=find.ancestor(of:find.byType('CapsuleButton'), matching: find.byType('RaisedButton'));
final availableStores=find.text('利用可能');
final availableStores1=find.text('availableStores');
final notesOnUse=find.text('利用上の注意');
final notesOnUse2=find.ancestor(of:find.text('利用上の注意'), matching: find.byType('RichText'));
final howToUseLevel=find.text('使い方');
final howToUseDetails=find.text('ご利用の際は店舗スタッフに当画面を提示してください。利用回数上限無しのクーポンは利用済みステータスになることはない 獲得後は有効期限内であれば以下のボタンを常に表示する');
final favourateIcon=find.ancestor(of:find.byType('SizedBox'), matching: find.byType('FlatButton'));
final couponDetailsBackButton=find.bySemanticsLabel('←');
final couponDetailsLink=find.ancestor(of:find.byType('FlatButton'), matching: find.text('Coupon Info'));
final couponPrecautions=find.text('※ご利用の際は店舗スタッフに当画面を提示してください。');
final getCouponPopHeader=find.bySemanticsLabel('先着人数に達しています');
final getCouponPopDeatils=find.ancestor(of: find.byType('MaterialApp'), matching: find.text('クーポンを獲得することができません'));
final getCouponPopOkay=find.ancestor(of: find.byType('MaterialApp'), matching: find.text('閉じる'));
final useCouponBarCodeImage=find.byType('OctoImage');
final useBarCodeButton=find.ancestor(of: find.byType('RaisedButton'), matching: find.text('閉じる'));
final couponExpired=find.text('このクーポンは利用期限が終了しています。');
final couponusedPopupMsg=find.ancestor(of: find.byType('MaterialApp'), matching: find.text('このクーポンは利用済みです'));
final loginDetailsLink=find.text('すでにアカウントをお持ちの方はこちら');

//favourite_items
final favouriteItemsLink=find.ancestor(of:find.byType('FlatButton'), matching: find.text('Favourite Items'));
final favouriteTitle=find.bySemanticsLabel('お気に入り');
final couponTab=find.ancestor(of:find.byType('TabBar'), matching: find.text('クーポン'));
final Usecoupon1=find.text('Sample Coupon 1');
final Getcoupon2=find.text('Sample Coupon 2');
final UsedCoupon3=find.text('Sample Coupon 3');
final NotavailableCoupon4=find.text('Sample Coupon 4');
final UseCouponWithMaxNumberCoupo6=find.text('Sample Coupon 6');
final contentTab=find.ancestor(of:find.byType('TabBar'), matching: find.text('コンテンツ'));
final productTab=find.ancestor(of:find.byType('TabBar'), matching: find.text('商品'));
final presentTab=find.ancestor(of:find.byType('TabBar'), matching: find.text('プレゼント'));
final sampleContent1=find.text('Sample Content 1');
final contentDetails=find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi. Nulla sodales, ligula egestas luctus commodo, justo lacus sagittis enim, ut lacinia massa lectus eget sapien.');
final programName=find.text('Game Of Thrones');
final programIcon=find.ancestor(of: find.byType('OctoImage'), matching: find.byType('SizedBox.shrink'));
final sampleProduct1=find.text('Sample Product 1');
final productDetails=find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi. Nulla sodales, ligula egestas luctus commodo, justo lacus sagittis enim, ut lacinia massa lectus eget sapien.');
final ProductprogramName=find.text('Game Of Thrones');
final ProductprogramIcon=find.ancestor(of: find.byType('OctoImage'), matching: find.byType('SizedBox.shrink'));
final CouponDetails=find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi.');
final CouponprogramName=find.text('Game Of Thrones');
final CouponProgramIcon=find.ancestor(of: find.byType('OctoImage'), matching: find.byType('SizedBox.shrink'));
final Samplepresent1=find.text('Sample Present 1');
final PresentDetails=find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi.');
final presentProgramName=find.text('Game Of Thrones');
final presentProgramIcon=find.ancestor(of: find.byType('OctoImage'), matching: find.byType('SizedBox.shrink'));
final presentTitle=find.bySemanticsLabel('プレゼント');

//Present-Application
final presentAppTitle = find.text('プレゼント');
final presentAppButton = find.ancestor(of: find.text('応募'), matching: find.byType('CapsuleButton'));
final goToPresentAppPage = find.text('Present Info');
final presentAppPresentName = find.text('Sample Present 1');
final presentAppPresentDetails = find.text('表京フンむく能古づそばと玲自リ戦文トツ墓問言万ヲタヨ麻康コ明道る年演覚病ンくつな。行ムキス本方ワヘニマ内唱たどょぱ治山マムリ寄堀スヤコ下弁あよ問康遺コタ電政をさや辞手マ討埼会イ載東ぶえ高1害阪田抜ッみ。必げ真二ホヤモ立認ぐるけず移黙きみ題政にでぴ賞根トホ質43所そ渡野づ前96契5抗づまみ名暖長ヱ鑑廃郎丘ろしと。');
final presentAppDeadline = find.text('2020年12月31日まで');
//final presentAppPoints = find.text()
final presentAppNotes = find.text('In feugiat eros eu feugiat rutrum. Nulla pretium fringilla ipsum, vel convallis ex mattis eget. Aliquam erat volutpat. Nulla facilisi.');
final presentAppImage = find.byValueKey('image');
final presentAppBackButton=find.bySemanticsLabel('←');
final presentAppPopUp1 = find.ancestor(of:find.text('プレゼントに応募しますか'), matching: find.byType('MaterialApp'));
final presentAppPopUpNoButton = find.ancestor(of:find.text('中止'), matching: find.byType('MaterialApp'));
final presentAppPopUpYesButton = find.ancestor(of:find.text('はい'), matching: find.byType('MaterialApp'));
final presentAppPopUp2 = find.ancestor(of:find.text('ポイントが不足しています'), matching: find.byType('MaterialApp'));
final presentAppPopUp2Body = find.ancestor(of:find.text('ポイントを貯めてから応募してください'), matching: find.byType('MaterialApp'));
final presentAppWarning = find.text('プレゼントの応募には会員登録が必要です');
final presentAppRegButton = find.ancestor(of: find.text('会員登録'), matching: find.byType('CapsuleButton'));
final presentAppFooter = find.text('すでにアカウントをお持ちの方はこちらからログイン');
final presentAppLoginLink = find.text('ログイン');
final presentAppExpire = find.text('現在このプレゼントは応募期間外です');
final presentAppPopUp3 = find.ancestor(of:find.text('住所を登録して下さい'), matching: find.byType('MaterialApp'));
final presentAppPopUp3LaterButton = find.ancestor(of:find.text('あとで'), matching: find.byType('MaterialApp'));
final presentAppPopUp3RegButton = find.ancestor(of:find.text('登録'), matching: find.byType('MaterialApp'));

final presentInfoButton = find.text('Present Info');
final presentInfoRegistrationButton = find.text('会員登録');

//Data-Providing-Company-List
final dataProvidingCompanyListButton = find.text('Data Providing Company List');
final companyListTitle = find.text('提供先企業');
final companyListBackButton = find.text('←');
final moreButton =find.text('more');


// First user consent agreement
final firstAgreementText1Path = find.text ('アプリを始める前に');
final firstAgreementText2Path = find.text ('利用規約とプライバシーポリシーをご確認ください。');
final firstAgreementButton = find.ancestor(of: find.text('同意してはじめる'), matching: find.byType('CapsuleButton'));
final firstAgreementLoginLink = find.text('ログイン');
final firstAgreementText3Path = find.text('すでにアカウントをお持ちの方はこちらからログイン');
final backButton=find.text('←');
final homeTitle = find.text('ホーム');
final firstAgreementHomeButton = find.text ('同意してはじめる');
final firstAgreementUAButton = find.text ('利用規約');
final firstAgreementPrivacyPolicyButton = find.text ('プライバシーポリシー');
final firstAgreementLoginButton = find.text ('ログイン');

//myPage
final myPagelink=find.text('マイページ');
final registrationButton=find.text('会員登録');
final myPageTitle=find.bySemanticsLabel('マイページ');
final starIcon=find.byType('Image');
final point=find.text('ポイント');
final requiredText=find.text('※ポイントを利用するには会員登録が必要です');
final MyPageloginText1=find.text('すでにアカウントをお持ちの方はこちらから');
final MyPageloginText2=find.text('ログイン');
final couponListtitle=find.text('COUPON LIST');
final MyPagecouponImage=find.byType('OctoImage');
final MypageCouponDate=find.byType('DateFormat');
final MyPageCouponName=find.text('日本語で試すサンプルクーポン２');
final SettingContact=find.text('SETTINGS / CONTACT');
final ContactUs=find.text('お問い合わせ');
final EditProfile=find.text('プロフィールを編集');
final Notice=find.text('お知らせ');
final PushNotificationSettings=find.text('プッシュ通知設定');
final TermsOfService=find.text('利用規約');
final privacyPolicy=find.text('プライバシーポリシー');
final others=find.text('OTHERS');
final withdrawal=find.text('退会');
final logOut=find.text('ログアウト');

//Notice
final NoticePageTitle=find.text('お知らせ');



//Information Screen
final infoButton = find.text('お知らせ');
final termsOfUsages = find.text('利用規約');
final tutorialSkipButtonIS = find.text('スキップして始める');
final infoTitle = find.text('お知らせ');
//final others = find.text('OTHERS');

//Navigation bar
final homePage = find.text('ホーム');
final favouritePage = find.text('お気に入り');
final myPagePage = find.text('マイページ');
final tutorialSkipButtonNB = find.text('スキップして始める');
final favoriteCheck = find.text('コンテンツ');

//Tutorial
final tutorialSkipButton = find.text('スキップして始める');
final tutorialNextButton = find.text('次へ');

//Content details

final goToContentDetails = find.text('テスト変更');
final contentName = find.text('テスト変更');
final contentDetails1 = find.text('表京フンむく能古づそばと玲自リ戦文トツ墓問言万ヲタヨ麻康コ明道る年演覚病ンくつな。行ムキス本方ワヘニマ内唱たどょぱ治山マムリ寄堀スヤコ下弁あよ問康遺コタ電政をさや辞手マ討埼会イ載東ぶえ高1害阪田抜ッみ。必げ真二ホヤモ立認ぐるけず移黙きみ題政にでぴ賞根トホ質43所そ渡野づ前96契5抗づまみ名暖長ヱ鑑廃郎丘ろしと。');
final contentDetailsLevel1 = find.text('番組情報');
final contentDetailsLevel2 = find.text('あさチャン！');
final contentDetails2 = find.text('知のビフォーアフター驚き、発見、知ったかぶり！？ …好奇心旺盛なゲストが集結したスタジオで繰り広げられる“知識を得た瞬間”の表情にご注目！');
final contentDetailsTitle = find.text('コンテンツ詳細');

//表京フンむく能古づそばと玲自リ戦文トツ墓問言万ヲタヨ麻康コ明道る年演覚病ンくつな。行ムキス本方ワヘニマ内唱たどょぱ治山マムリ寄堀スヤコ下弁あよ問康遺コタ電政をさや辞手マ討埼会イ載東ぶえ高1害阪田抜ッみ。必げ真二ホヤモ立認ぐるけず移黙きみ題政にでぴ賞根トホ質43所そ渡野づ前96契5抗づまみ名暖長ヱ鑑廃郎丘ろしと。





