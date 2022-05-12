import 'package:flutter/material.dart';
import 'package:creatego/src/components/appbar/logo_banner.dart';
import 'package:creatego/src/components/appbar/topbar.dart';
import 'package:creatego/src/components/breadcrumbs/breadcrumbs.dart';
import 'package:creatego/src/components/buttons/default_button.dart';
import 'package:creatego/src/components/cards/card.dart';
import 'package:creatego/src/components/dropdown/dropdown_2.dart';
import 'package:creatego/src/components/inputs/custom_input.dart';
import 'package:creatego/src/components/modals/default_modal.dart';
import 'package:creatego/src/components/sized_text/sized_text.dart';
import 'package:creatego/src/components/switch/switch.dart';

import '../../creatego_theme.dart';
import 'get_color.dart';
import 'get_yollet_variants.dart';

class WidgetParser {
  static List<Widget> parseWidgetFromMap(Map jsonObject) {
    List<Widget> list = [];
    for (int i = 0; i < jsonObject.keys.length; i++) {
      Map jsonObjectParams = jsonObject[jsonObject.keys.toList()[i]];
      String widgetName = jsonObject.keys.toList()[i];
      list.add(_getWidget(jsonObjectParams, widgetName));
    }

    return list.reversed.toList();
  }
}

Widget _getWidget(Map params, String widgetName) {
  switch (widgetName) {
    case "DefaultSwitch":
      return DefaultSwitch(
          height: params['height'],
          value: params['value'],
          note: params['note'],
          label: params['label']);
    case "SizedText":
      return SizedText(
        text: params['text'],
        height: params['height'],
        width: params['width'],
        alignment: getAlignment(params['alignment']),
        textAlign: getTextAlign(params['textAlign']),
        maxLines: params['maxLines'],
        useLocaleText: params['useLocaleText'],
      );
    case "DefaultModal":
      return DefaultModal(
          onCancel: () {},
          onConfirm: () {},
          // icon: HeroIcons.icons[params['icon']],
          cancelText: params['cancelText'],
          confirmText: params['confirmText'],
          subtitle: params['subtitle'],
          title: params['title']);
    case "DefaultInput":
      return DefaultInput(
        labelText: params['labelText'],
        isPassword: params['isPassword'],
        hintText: params['hintText'],
        isTransparent: params['isTransparent'],
        keyboardType: getKeyboardType(params['keyboardType']),
      );
    case "DefaultDropdown":
      return DefaultDropdown(
        listValues: params['listValues'],
        size: params['size'],
        hintText: params['hintText'],
        errorText: params['errorText'],
        label: params['label'],
        note: params['note'],
        readOnly: params['readOnly'],
        value: params['value'],
      );
    case 'DefaultButton':
      return DefaultButton(
        onPressed: () {},
        buttonText: params['buttonText'],
        disabled: params['disabled'],
        isExpanded: params['isExpanded'],
        isIconRightSide: params['isIconRightSide'],
        sizeOfButton: getYolletButtonSize(params['sizeOfButton']),
        variant: getYolletButtonVariant(params['variant']),
        // icon: HeroIcons.icons[params['icon']],
        // iconButton: HeroIcons.icons[params['iconButton']],
      );
    case 'Breadcrumb':
      return Breadcrumb(routes: params['routes']);
    case 'LogoBanner':
      return LogoBanner(
          image: params['image'],
          height: params['height'],
          goToLink: params['goToLink']);
    case 'DefaultTopbar':
      return DefaultTopbar(image: params['image']);
    case 'DefaultCard':
      return DefaultCard(
          bodyName: params['bodyName'],
          childName: params['childName'],
          headName: params['headName'],
          isButton: params['isButton'],
          backgroundColor: getColor(params['backgroundColor']),
          headNameColor: getColor(params['headNameColor']),
          bodyNameColor: getColor(params['bodyNameColor']));
    default:
      return const Text(
        'New text widget',
        style: TextStyle(color: Colors.redAccent),
      );
  }
}
