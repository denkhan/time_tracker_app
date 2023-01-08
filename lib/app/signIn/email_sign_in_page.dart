import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/signIn/email_sign_in_form_bloc_based.dart';
import 'package:time_tracker_flutter_course/app/signIn/email_sign_in_form_change_notifier.dart';
import 'package:time_tracker_flutter_course/app/signIn/email_sign_in_form_stateful.dart';

import '../../services/auth.dart';

class EmailSignInPage extends StatelessWidget {
  EmailSignInPage({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: EmailSignInFormChangeNotifier.create(context),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
