import 'package:json_annotation/json_annotation.dart';

part 'pagination_info.g.dart';

@JsonSerializable(createToJson: false)
class PaginationInfo {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  const PaginationInfo({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);
}
