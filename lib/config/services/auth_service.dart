import 'package:get/get.dart';
import '../../constant/app_key_contant.dart';
import '../../utils/app_print.dart';
import '../../widgets/app_alerts.dart';
import '../routes/app_routes.dart';
import '../storage/data_store_service.dart';

class AuthService extends GetxService {
  AuthCredentials authCredentials = AuthCredentials();

  logoutWithRedirection() async {
    appDebugPrint('logout called');
    appAlerts.customAlert(
      alertTypes: AlertTypes.error,
      title: 'Session Expired',
      message: 'Your login session has expired. Please login again.',
      callback: () async {
        logout();
      },
    );
  }

  saveDate() {}

  checkUserIfAvailable() {
    appDebugPrint(authCredentials.getToken());
    if (authCredentials.getToken() != '') {
      return true;
    } else {
      return false;
    }
  }

  logout() {
    dataStore.clearData();
    Get.offAllNamed(AppRoutes.login);
  }
}
class AuthCredentials{
  saveId(String id) {
    dataStore.setString(AppStringConstant.kid, id);
  }

  saveName(String name) {
    dataStore.setString(AppStringConstant.kName, name);
  }

  saveEmail(String email) {
    dataStore.setString(AppStringConstant.kEmail, email);
  }

  saveToken(String data) {
    dataStore.setString(AppStringConstant.kToken, data);
  }

  saveImage(String url) {
    dataStore.setString(AppStringConstant.kImage, url);
  }

  getImage() {
    return dataStore.getString(AppStringConstant.kImage);
  }

  getToken() {
    return dataStore.getString(AppStringConstant.kToken);
  }

  getName() {
    return dataStore.getString(AppStringConstant.kName);
  }

  getId() {
    return dataStore.getString(AppStringConstant.kid);
  }

  getEmail() {
    return dataStore.getString(AppStringConstant.kEmail);
  }
}
