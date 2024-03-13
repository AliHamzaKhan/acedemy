


import 'package:get/get.dart';
import '../../../config/demo/demo_content.dart';
import '../../../config/model/subject_model.dart';

class ResultController extends GetxController{
  var isOffline = true.obs;
  var subjectsList = <SubjectModel>[].obs;
  var selectedSubject = SubjectModel(id: '', title: 'All', image: '').obs;

  getSubject() {
    subjectsList.add(selectedSubject.value);
    for (var a in demoSubjectList) {
      subjectsList.add(a);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getSubject();
  }
}