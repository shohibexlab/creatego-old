// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_total_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCalculateTotalRes _$OrderCalculateTotalResFromJson(Map json) =>
    OrderCalculateTotalRes(
      totalDue: (json['totalDue'] as num).toDouble(),
      totalTax: (json['totalTax'] as num).toDouble(),
      totalDiscount: (json['totalDiscount'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderCalculateTotalResToJson(
        OrderCalculateTotalRes instance) =>
    <String, dynamic>{
      'totalDue': instance.totalDue,
      'totalTax': instance.totalTax,
      'totalDiscount': instance.totalDiscount,
    };
