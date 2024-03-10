



abstract class AppRoutes{

  static const String splash = '/splash';
  static const String loginSelection = '/login_selection';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgot = '/forgot';
  static const String home = '/home';

  static const String dashboard = '/dashboard';
  static const String assignment = '/assignment';
  static const String profile = '/profile';
  static const String chatList = '/chat_list';
  static const String chat = '/chat';
  static const String attendance = '/attendance';
  static const String timeTable = '/time_table';
  static const String noticeBoard = '/notice_board';
  static const String exams = '/exams';
  static const String result = '/result';
  static const String setting = '/setting';
  static const String report = '/report';

  static String kChatWithUser(String id) =>
      "$chat/$id";

  static const String notification = '/notification';
  static const String notFound = '/not_found';

}


abstract class AppPath{

}