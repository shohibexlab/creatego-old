import 'dart:ui';
import 'package:get/get.dart';
import 'package:yollet_system/src/localization/languages/languages.dart';

class GetLocalization extends Translations {
  String appName;

  GetLocalization(this.appName);

  @override
  Map<String, Map<String, String>> get keys => _getLocale(appName);
}

class Locales {
  Locale get RuLocale => const Locale('ru');
  Locale get KzLocale => const Locale('kk');
  Locale get EnLocale => const Locale('en');
  Locale get KrLocale => const Locale('ko');
}

Map<String, Map<String, String>> _getLocale(String appName) {
  Map<String, Map<String, String>> _map = {};
  switch (appName) {
    case 'simple_pay':
      _map = {
        'en_EN': EnglishLocale.ENSimplePay,
        'ko_KO': KoreanLocale.KOSimplePay,
        'kk_KZ': KazakhLocale.KZSimplePay,
        'ru_RU': RussianLocale.RUSimplePay,
      };
  }

  return _map;
}
