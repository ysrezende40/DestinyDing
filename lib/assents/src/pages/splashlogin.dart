import 'package:app_destiny_ding/assents/src/componentes/color_style.dart';
import 'package:app_destiny_ding/assents/src/componentes/my_checkbox.dart';
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
      backgroundColor: ColorStyle.background,
       body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 13),
              child: Text(
                 'Acesse',
                style: TextStyle(
                  color: ColorStyle.primary,
                  fontFamily: AutofillHints.addressCity,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
               padding: EdgeInsets.all(4),
               child: Text(
                 'Com login e senha',
                style: TextStyle(
                  color: ColorStyle.primary,
                  fontFamily: AutofillHints.addressCity,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             const Padding(
               padding: EdgeInsets.all(5),
               child: Text(
                 'Digite seu email',
                style: TextStyle(
                  color: ColorStyle.primary,
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
                 fillColor: ColorStyle.primary,
                 hintText: "",
                 isPassword: false
                 ),
               ),
            ),
            const Padding(
               padding: EdgeInsets.all(5),
               child: Text(
                 'Digite sua senha',
                style: TextStyle(
                  color: ColorStyle.primary,
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
                 fillColor: ColorStyle.primary,
                 hintText: "",
                 isPassword: true
                 ),
               ),
            ),
             Padding(
              padding: EdgeInsets.all(0),
              child: MyCheckbox(
                checkboxColor: ColorStyle.primary,
                isChecked: false,
                onChanged: (value) => {
                   setState(() {
                    value = value ?? true; 
                  })
                },
                label: "Lembrar Senha",
                labelColor: ColorStyle.secondary,
                
              ),
            )
          ]
        ),
    );
  }
}