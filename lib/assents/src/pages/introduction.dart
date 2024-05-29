import 'package:app_destiny_ding/assents/src/componentes/color_style.dart';
import 'package:app_destiny_ding/assents/src/componentes/intro_page.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> with TickerProviderStateMixin {
  late TabPageSelector _tabPageSelector;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();

    _tabPageSelector = TabPageSelector(
      controller: TabController(length: 4, vsync: this),
      selectedColor: ColorStyle.background,
      color: ColorStyle.secondary,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    void goToNextPage() {
      _pageController.nextPage(
        duration: Durations.medium4, 
        curve: Curves.easeIn
      );
    }

    return Scaffold(
      backgroundColor: ColorStyle.secondary,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.green,
          onPressed: () {
            if (_pageController.page == 0) {
              Navigator.pop(context);
            } else {
              _pageController.previousPage(
                duration: Durations.medium4, 
                curve: Curves.easeIn
              );
            }
          },
        ),
        backgroundColor: ColorStyle.secondary,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _tabPageSelector.controller?.index = index;
        },
        children: [
          IntroPage(
            image: Image.asset('lib/assents/intro-page-1.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Viaje Tranquilo: Não Perca seu Ponto',
            description: 'Dormiu no ônibus? Não se preocupe em perder seu ponto. Acione um alarme para ser avisado quando estiver chegando.',
            onButtonPressed: goToNextPage,
          ),
          IntroPage(
            image: Image.asset('lib/assents/intro-page-2.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Alarme Personalizado',
            description: 'Configure um alarme personalizado para garantir que você nunca perca seu ponto no ônibus. Acorde no momento certo, onde quer que esteja',
            onButtonPressed: goToNextPage
          ),
          IntroPage(
            image: Image.asset('lib/assents/intro-page-3.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Localização Precisa',
            description: 'Escolha seu destino no mapa e relaxe. Um alarme será ativado para garantir que você desça exatamente onde planejou.',
            onButtonPressed: goToNextPage,
          ),
          IntroPage(
            image: Image.asset('lib/assents/intro-page-4.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Viagem Confortável e Segura',
            description: 'Desfrute de uma viagem tranquila no ônibus. Com nosso serviço, sua única preocupação será desfrutar do passeio.',
            onButtonPressed: goToNextPage,
          ),
        ],
      ),
    );
  }
}