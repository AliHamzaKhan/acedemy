


import 'package:acedemy/constant/assets_contant.dart';

import '../model/event_model.dart';
import '../model/subject_model.dart';

List<String> demoSchoolList = [
  'Noor Public School',
  'Haseeb Public School',
  'Eden Public School',
  'High Education School',
  'Karachi Public School'
];

List<SubjectModel> demoSubjectList = [
  SubjectModel(id: '', title: 'English', image: AssetsConstant.kEnglish),
  SubjectModel(id: '', title: 'Urdu', image: AssetsConstant.kUrdu),
  SubjectModel(id: '', title: 'Math', image: AssetsConstant.kMaths),
  SubjectModel(id: '', title: 'Pak Studies', image: AssetsConstant.kPakistan),
  SubjectModel(id: '', title: 'Computer', image: AssetsConstant.kComputer),
  SubjectModel(id: '', title: 'Islamiat', image: AssetsConstant.kArabic),
  SubjectModel(id: '', title: 'Physics', image: AssetsConstant.kPhysics),
  SubjectModel(id: '', title: 'Chemistry', image: AssetsConstant.kChemistry),
  SubjectModel(id: '', title: 'Biology', image: AssetsConstant.kBiology),
];

List<EventModel> demoEventList = [
  EventModel(title: 'Independence Day', description: 'Celebrate Independence Day With Us', date: '14-Aug-1947', image: 'assets/vector/vector1.jpg'),
  EventModel(title: 'Defence Day', description: 'Celebrate Defence Day With Us', date: '05-Feb-1965', image: 'assets/vector/vector2.jpg'),
];