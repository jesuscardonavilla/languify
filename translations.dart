import 'package:intl/intl.dart';

final Map<String, String> translations = {
  'en': 'English',
  'es': 'Español',
  'fr': 'Français',
  'de': 'Deutsch',
  'zh': '中文',
  'ja': '日本語',
  'ru': 'Русский',
  'ko': '한국어',
  'beginnerDifficulty': 'Beginner',
  'intermediateDifficulty': 'Intermediate',
  'advancedDifficulty': 'Advanced',
};

String translate(String key, [List<Object>? args]) =>
    Intl.message(
      translations[key]!,
      name: key,
      args: args,
      locale: Intl.defaultLocale,
    );
