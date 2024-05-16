import 'package:app_destiny_ding/assents/src/componentes/color_style.dart';
import 'package:app_destiny_ding/assents/src/componentes/my_text_from_field.dart';
import 'package:flutter/material.dart';


class Splashlogin extends StatefulWidget {
  const Splashlogin({super.key});

  @override
  State<Splashlogin> createState() => _SplashloginState();
}

class _SplashloginState extends State<Splashlogin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorStyle.primary,
       body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                 'Acesse',
                style: TextStyle(
                  color: Colors.black12,
                  fontFamily: AutofillHints.addressCity,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
               padding: EdgeInsets.all(24),
               child: Text(
                 'Com login e senha',
                style: TextStyle(
                  color: Colors.black12,
                  fontFamily: AutofillHints.addressCity,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
               padding: const EdgeInsets.all(24),
               child: SizedBox(
                 height: 62,
                 width: MediaQuery.of(context).size.width,
                 child: MyTextFormField(
                 border: InputBorder.none,
                 controller: TextEditingController.fromValue(
                  TextEditingValue.empty
                 ),
                 fillColor: ColorStyle.secudary,
                 hintText: "",
                 isPassword: false
                 ),
               ),
            )
          ]
        ),
    );
  }
}