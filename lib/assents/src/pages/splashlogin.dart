import 'package:app_destiny_ding/assents/src/componentes/color_style.dart';
import 'package:app_destiny_ding/assents/src/componentes/my_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:app_destiny_ding/assents/src/componentes/my_button.dart';

class Splashlogin extends StatefulWidget {
  const Splashlogin({super.key});

  @override
  State<Splashlogin> createState() => _SplashloginState();
}

class _SplashloginState extends State<Splashlogin> {
  late bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.background,
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Acesse',
            style: TextStyle(
              color: ColorStyle.primary,
              fontFamily: AutofillHints.addressCity,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 24),
          child: Text(
            'Com login e senha',
            style: TextStyle(
              color: ColorStyle.primary,
              fontFamily: AutofillHints.addressCity,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Email:',
            style: TextStyle(
              color: ColorStyle.primary,
              fontFamily: AutofillHints.addressCity,
              fontSize: 16,
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                controller:
                    TextEditingController.fromValue(TextEditingValue.empty),
                fillColor: ColorStyle.primary,
                hintText: "Digite seu E-mail",
                isPassword: false),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Senha:',
            style: TextStyle(
              color: ColorStyle.primary,
              fontFamily: AutofillHints.addressCity,
              fontSize: 16,
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
                controller:
                    TextEditingController.fromValue(TextEditingValue.empty),
                fillColor: ColorStyle.primary,
                hintText: "Digite sua Senha",
                isPassword: true),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            child: Row(children: [
              Row(
                children: [
                  Checkbox(
                    value: _checkBoxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkBoxValue = value!;
                      });
                    },
                    activeColor: ColorStyle.secondary,
                    side: const BorderSide(color: ColorStyle.primary),
                  ),
                  const Text(
                    'Lembrar Senha',
                    style: TextStyle(color: ColorStyle.primary, fontSize: 12),
                  )
                ],
              ),
            ])),
        Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Mybutton(
                buttonProportion: 0.4,
                isPrimary: false,
                label: "Acessar",
                marginSize: 0,
                onPressedButton: () => {
                  Navigator.pushNamed(context, '/introduction')
                }
              ),
              Mybutton(
                buttonProportion: 0.4,
                isPrimary: false,
                label: "Cadastrar",
                marginSize: 0,
                onPressedButton: () {},
              ),
            ])),
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            children: [
              Expanded(child: Divider()),
              Text(
                '  Ou continue com  ',
                style: TextStyle(color: ColorStyle.primary, fontSize: 14),
              ),
              Expanded(child: Divider()),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 30, left: 60, right: 60),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/2023_Facebook_icon.svg/1024px-2023_Facebook_icon.svg.png',
                    width: 50,
                    height: 50,
                  ),
                ]))
      ]),
    );
  }
}
