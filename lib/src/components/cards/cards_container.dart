import 'package:flutter/material.dart';
import 'package:yollet_system/src/components/buttons/button_variants.dart';
import 'package:yollet_system/src/components/buttons/default_button.dart';
import 'package:yollet_system/src/components/sized_text/sized_text.dart';
import 'package:yollet_system/yollet_theme.dart';

import 'card.dart';

class CardsContainer extends StatefulWidget {
  List<DefaultCard>? cardsList;
  String? methodName;
  bool? addMore;
  void Function()? addClick;
  CardsContainer({
    Key? key,
    this.cardsList,
    this.methodName = 'registered_payment_method',
    this.addMore = true,
    this.addClick,
  }) : super(key: key);

  @override
  _CardsContainerState createState() => _CardsContainerState();
}

class _CardsContainerState extends State<CardsContainer> {
  int? activeElementIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 442,
        height: 579,
        decoration: BoxDecoration(
            color: ThemeColors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFD1D5DB), //no colorTheme in figma
              width: 1.0,
            )),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedText(
                        text: widget.methodName,
                        textStyle: ThemeTextRegular.xl.apply(
                          color: ThemeColors.black,
                        )),
                    if (widget.addMore!)
                      DefaultButton(
                        onPressed: widget.addClick,
                        buttonText: 'add',
                        sizeOfButton: ButtonSize.M,
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 493,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (widget.cardsList != null)
                          const SizedBox(
                            height: 16,
                          ),
                        Column(
                          children: _listOfCards(widget.cardsList!),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  List<Widget> _listOfCards(List<DefaultCard> cardsList) {
    List<Widget> list = [];
    for (var i = 0; i < cardsList.length; i++) {
      if (i == activeElementIndex) {
        cardsList[activeElementIndex!].backgroundColor = ThemeColors.orange50;
      }
      list.add(cardsList[i]);
      list.add(const SizedBox(
        height: 24,
      ));
    }
    return list;
  }
}
