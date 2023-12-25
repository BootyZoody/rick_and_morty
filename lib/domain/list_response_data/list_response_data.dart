import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/domain/pagination_info/pagination_info.dart';

part 'list_response_data.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class ListResponseData<T extends Object> {
  final PaginationInfo info;
  final List<T> results;

  const ListResponseData({
    required this.info,
    required this.results,
  });

  factory ListResponseData.fromJson({
    required Map<String, dynamic> json,
    required T Function(Map<String, dynamic> json) resultFromJson,
  }) =>
      _$ListResponseDataFromJson(
        json,
        (dataJson) => resultFromJson(dataJson as Map<String, dynamic>),
      );
}
