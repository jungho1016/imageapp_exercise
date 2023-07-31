import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo(
      {required String type,
      required String previewURL,
      required num id,
      required String tags,
      required String user,
      required String webformatURL,
      required num likes,
      required String userImageURL,
      required num views}) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}
