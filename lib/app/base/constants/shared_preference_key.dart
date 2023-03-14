import 'package:get_storage/get_storage.dart';

final pref = GetStorage(); // shared preference
// ———————————————————————————————————————————————————————
class LocalData {
  static const PREF_IS_FIRST_INSTALL = "PREF_IS_FIRST_INSTALL";
  static const PREF_IS_LOGIN = 'PREF_IS_LOGIN';
  static const PREF_TOKEN = 'PREF_TOKEN';
  static const PREF_ID = 'PREF_ID';
}
