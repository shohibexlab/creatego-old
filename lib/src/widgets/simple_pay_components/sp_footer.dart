// import 'package:flutter/material.dart';
// import 'package:mix/mix.dart';
// import 'package:creatego/creatego_theme.dart';
//
//
// const grayText = Variant('grayText');
// const orangeText = Variant('orangeText');
// const coolGrayText = Variant('coolGrayText');
//
// class SalesFooterWidget extends StatelessWidget {
//   bool hasDiscountBtn;
//   bool hasInnButton;
//   bool hasDefaultButton;
//   bool hasTotalPrice;
//   bool hasBalancePrice;
//   bool hasChangePrice;
//   int? changeValue;
//   String? iin;
//   String? discountButtonPrice;
//   int? discountPrice;
//   VoidCallback? addButtonOnPressed;
//   VoidCallback? defaultButtonOnPressed;
//   Widget? button;
//   int? remainderToBePaid;
//
//   SalesFooterWidget(
//       {Key? key,
//       this.iin,
//       this.changeValue,
//       this.remainderToBePaid,
//       this.discountPrice = 0,
//       this.discountButtonPrice,
//       this.hasDiscountBtn = false,
//       this.hasInnButton = true,
//       this.hasDefaultButton = true,
//       this.hasTotalPrice = true,
//       this.hasBalancePrice = false,
//       this.hasChangePrice = false,
//       this.addButtonOnPressed,
//       this.defaultButtonOnPressed,
//       this.button})
//       : super(key: key);
//
//   Mix get footerMix => Mix(
//         height(300),
//         width(double.maxFinite),
//         mainAxis(MainAxisAlignment.spaceBetween),
//         roundedTL(24),
//         roundedTR(24),
//         paddingVertical(24),
//         paddingHorizontal(32),
//         bgColor(ThemeColors.amber300),
//       );
//
//   Mix get innButtonMix => Mix(
//       mainAxis(MainAxisAlignment.spaceBetween),
//       crossAxis(CrossAxisAlignment.center),
//       title(textStyle(ThemeTextRegular.xl)),
//       grayText(textColor(ThemeColors.gray500)));
//
//   Mix get discountButtonMix => Mix(
//         crossAxis(CrossAxisAlignment.center),
//         mainAxis(MainAxisAlignment.spaceBetween),
//         title(textStyle(ThemeTextRegular.xl)),
//       );
//
//   Mix get xl3CrossAxisStart => Mix(
//         mainAxis(MainAxisAlignment.spaceBetween),
//         crossAxis(CrossAxisAlignment.start),
//         title(
//           textStyle(
//             ThemeTextSemiBold.lg
//                 .copyWith(decoration: TextDecoration.lineThrough),
//           ),
//           textColor(ThemeColors.orange500),
//         ),
//         textStyle(ThemeTextSemiBold.xl3),
//         orangeText(
//           textStyle(ThemeTextSemiBold.xl),
//           textColor(ThemeColors.orange500),
//         ),
//       );
//
//   Mix get xl2 => Mix(
//         mainAxis(MainAxisAlignment.spaceBetween),
//         coolGrayText(
//           textStyle(
//             ThemeTextRegular.xl,
//           ),
//           textColor(ThemeColors.coolgray500),
//         ),
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return Box(
//       mix: footerMix,
//       child: footerMix.column(
//         children: [
//           if (hasInnButton)
//             innButtonMix.row(
//               children: [
//                 TextMix(
//                   'price',
//                 ),
//                 if (iin == null)
//                   GhostButtonSP(
//                     height: 36,
//                     width: 114,
//                     txtSize: 24,
//                     text: 'Добавить',
//                     onPressed: addButtonOnPressed ?? () {},
//                   )
//                 else
//                   TextMix(
//                     iin!,
//                     variant: grayText,
//                   ),
//               ],
//             ),
//           if (hasDiscountBtn)
//             discountButtonMix.row(
//               children: [
//                 TextMix('discountButton price'),
//                 if (discountButtonPrice == null)
//                   GhostButtonSP(
//                     height: 36,
//                     width: 114,
//                     txtSize: 24,
//                     text: 'Добавить',
//                     onPressed: addButtonOnPressed ?? () {},
//                   )
//                 else
//                   TextMix(
//                     discountButtonPrice ?? '',
//                   ),
//               ],
//             ),
//           if (hasTotalPrice)
//             xl3CrossAxisStart.row(
//               children: [
//                 TextMix('totalText'),
//                 SpacedRow(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   horizontalSpace: 30,
//                   children: [
//                     if (discountPrice! > 0.0)
//                       TextMix(
//                         'text: (value).getPriceMap.formattedVer',
//                         variant: title,
//                       ),
//                     TextMix(
//                       'discount value',
//                       variant: orangeText,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           if (hasChangePrice)
//             xl3CrossAxisStart.row(
//               children: [
//                 TextMix(
//                   'Сдача:',
//                 ),
//                 TextMix(
//                   changeValue.toString(),
//                   variant: orangeText,
//                 ),
//               ],
//             ),
//           if (hasBalancePrice)
//             xl2.row(
//               children: [
//                 TextMix(
//                   'remainder to be paid',
//                 ),
//                 TextMix(
//                   remainderToBePaid.toString(),
//                   variant: coolGrayText,
//                 ),
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }
