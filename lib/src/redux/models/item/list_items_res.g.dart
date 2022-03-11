// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemListItemsRes _$ItemListItemsResFromJson(Map json) => ItemListItemsRes(
      list: (json['list'] as List<dynamic>)
          .map((e) => ProductItemRes.fromJson(e as Map))
          .toList(),
    );

Map<String, dynamic> _$ItemListItemsResToJson(ItemListItemsRes instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
