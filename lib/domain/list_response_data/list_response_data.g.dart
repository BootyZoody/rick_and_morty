// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponseData<T> _$ListResponseDataFromJson<T extends Object>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ListResponseData<T>(
      info: PaginationInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );
