import 'package:get/get.dart';

class HomeModel extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello'},
        'ur_PK': {'hello': 'ہیلو'},
        'es_MX': {'hello': 'Hola'}
      };
}
