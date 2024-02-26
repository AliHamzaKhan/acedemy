

import 'package:get_storage/get_storage.dart';

import '../services/data_parser_service.dart';

class DataStoreService {
  static GetStorage box = GetStorage();

  setInt(String key, int value) {
    box.write(key, value);
  }

  remove(String key) {
    box.remove(key);
  }

  int getInt(String key) {
    var v = box.read(key);
    return dataParser.getInt(v);
  }

  setBool(String key, bool value) {
    box.write(key, value);
  }

  bool getBool(String key) {
    var v = box.read(key);
    if (v != null) {
      return v == true ? true : false;
    }
    return false;
  }

  setDouble(String key, double value) {
    box.write(key, value);
  }

  double getDouble(String key) {
    var v = box.read(key);
    return dataParser.getDouble(v);
  }

  setString(String key, String value) {
    box.write(key, dataParser.base64Encoder(value));
  }

  String getString(String key) {
    var v = box.read(key);
    return dataParser.base64Decoder(dataParser.getString(v));
  }

  setList(String key, List<dynamic> value) {
    return box.write(key, value);
  }

  List<dynamic> getList(String key) {
    var v = box.read(key);
    return dataParser.getDynamicList(v);
  }

  setMap(String key, Map<dynamic, dynamic> value) {
    box.write(key, value);
  }

  Map<dynamic, dynamic> getMap(String key) {
    var v = box.read(key);

    return dataParser.getDynamicMap(v);
  }

  void clearData() async{
    box.erase();
  }

}

DataStoreService dataStore = DataStoreService();