 import 'package:flutter/material.dart';
import 'package:flutter_auto_route/common/constants/colors.dart';

class Alert {
  static double averageRating(List<int> rating) {
    var avgRating = 0;
    for (int i = 0; i < rating.length; i++) {
      avgRating = avgRating + rating[i];
    }
    return double.parse((avgRating / rating.length).toStringAsFixed(1));
  }

  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  //Toast Message Show
  static toastMessage(String message) {
    // fluttertoast.showToast(
    //   msg: message,
    //   backgroundColor: Colors.black,
    //   textColor: Colors.white,
    //   fontSize: 15,
    //   toastLength: Toast.LENGTH_LONG,
    // );
  }

  // Flush Bar Error Message
  // static flushBarErrorMessage(String message, BuildContext context) {
  //   showFlushbar(
  //     context: context,
  //     flushbar: Flushbar(
  //       forwardAnimationCurve: Curves.decelerate,
  //       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //       padding: EdgeInsets.all(15),
  //       message: message,
  //       duration: Duration(seconds: 3),
  //       borderRadius: BorderRadius.circular(8),
  //       flushbarPosition: FlushbarPosition.TOP,
  //       backgroundColor: Colors.red,
  //       reverseAnimationCurve: Curves.bounceIn,
  //       positionOffset: 20,
  //       icon: Icon(
  //         Icons.error,
  //         size: 28,
  //         color: Colors.white,
  //       ),
  //     )..show(context),
  //   );
  // }

  static snackBarSuccess(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor:AppColor.kPrimaryColor, content: Text(message)));
  }

   static snackBarError(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text(message)));
  }
}