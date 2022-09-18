import 'package:get/get.dart';
import 'package:getx_apicall/model/home_model.dart';

import '../service/api_service.dart';

class HomeController extends GetxController {

  


  getData() async {
    ApiService apiService = ApiService();
    List<HomeModel> data = await apiService.fetchUsers();
    return data;
  }
}
