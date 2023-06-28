import 'package:flutter/cupertino.dart';
import 'package:laboratoriska5/widgets/LoginWidget.dart';
import 'package:laboratoriska5/widgets/SignUpWidget.dart';

class AuthPage extends StatefulWidget{

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>{
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickSignUp: toggle)
      : SignUpWidget(onClickSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);



}