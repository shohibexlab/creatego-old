// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summarize_amounts_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummarizeAmountsRes _$SummarizeAmountsResFromJson(Map json) =>
    SummarizeAmountsRes(
      salesCount: json['salesCount'] as int,
      salesAmount: (json['salesAmount'] as num).toDouble(),
      refundCount: json['refundCount'] as int,
      refundAmount: (json['refundAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$SummarizeAmountsResToJson(
        SummarizeAmountsRes instance) =>
    <String, dynamic>{
      'salesCount': instance.salesCount,
      'salesAmount': instance.salesAmount,
      'refundCount': instance.refundCount,
      'refundAmount': instance.refundAmount,
    };
