import 'package:arab_therapy_task/src/features/common/l10n/l10n.dart';
import 'package:arab_therapy_task/src/features/common/route/routes.dart';
import 'package:arab_therapy_task/src/features/common/utils/constants.dart';
import 'package:arab_therapy_task/src/features/common/utils/sizes.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        return OrientationBuilder(builder: (context, orientation) {
          Sizes.setScreenSize(boxConstraints, orientation);
          return MaterialApp(
            title: Constants.appName,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.grey,
              appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.dark,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.transparent,
                ),
              ),
            ),
            initialRoute: HomePage.routeName,
            onGenerateRoute: Routes.generateRoute,
            locale: L10n.supportedLocales.first,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        });
      },
    );
  }
}
