import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({super.key});

  


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Title'),
      titleTextStyle: TextStyle(
        fontSize: 25.sp,
        color: Colors.black,
      ),
      content:  Text(
        'This is Description',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  Text('Button'),
        )
      ],
    );
  }
}