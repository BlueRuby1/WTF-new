import 'package:flutter/widgets.dart';
import 'package:myfirstwtf_app/data/dummy_user_details.dart';
import 'package:myfirstwtf_app/model/user_detail.dart';

class UserNotifier extends ChangeNotifier {
  UserDetail? loggedInUser;

  void login(String email, String password) async {
    Future.delayed(Duration(seconds: 2));

    loggedInUser = USER_DETAILS[0];

    notifyListeners();
  }
}
