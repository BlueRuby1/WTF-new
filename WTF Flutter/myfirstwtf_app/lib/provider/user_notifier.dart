import 'package:flutter/widgets.dart';
import 'package:myfirstwtf_app/data/dummy_user_details.dart';
import 'package:myfirstwtf_app/model/user_detail.dart';

class UserNotifier extends ChangeNotifier {
  UserDetail? loggedInUser;

  void login(BuildContext context, String email, String password) async {
    print("Got in to log in function");
    Future.delayed(Duration(seconds: 2));

    // This is also the same as the for statement but it is a high order function
    // loggedInUser = USER_DETAILS
    //     .where((userDetail) => userDetail.email == email)
    //     .toList()[0];

    for (var userDetail in USER_DETAILS) {
      if (userDetail.email == email) {
        loggedInUser = userDetail;
        Navigator.of(context).pushReplacementNamed("/home");
      }
    }

    notifyListeners();
  }

  void signup(BuildContext context, String userName, String email) {
    loggedInUser = UserDetail(name: userName, email: email, profilePicture: "");
    USER_DETAILS.add(loggedInUser!);

    Navigator.pushReplacementNamed(context, "/home");

    notifyListeners();
  }
}
