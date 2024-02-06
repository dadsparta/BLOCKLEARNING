import 'package:blocklearning/app/routes/app_pages.dart';
import 'package:blocklearning/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:blocklearning/generated/locales.g.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Intl.defaultLocale = 'ru_RU';
  runApp(
    GetMaterialApp(
      title: 'NoCoffee',
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
      defaultTransition: Transition.rightToLeftWithFade,
      supportedLocales: const [Locale('ru')],
      locale: const Locale('ru'),
      builder: (context, page) => GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: page ?? const SizedBox.shrink()),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      translationsKeys: AppTranslation.translations,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
      ),
    ),
  );
}
