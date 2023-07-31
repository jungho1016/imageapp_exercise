// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      type: json['type'] as String,
      previewURL: json['previewURL'] as String,
      id: json['id'] as num,
      tags: json['tags'] as String,
      user: json['user'] as String,
      webformatURL: json['webformatURL'] as String,
      likes: json['likes'] as num,
      userImageURL: json['userImageURL'] as String,
      views: json['views'] as num,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'type': instance.type,
      'previewURL': instance.previewURL,
      'id': instance.id,
      'tags': instance.tags,
      'user': instance.user,
      'webformatURL': instance.webformatURL,
      'likes': instance.likes,
      'userImageURL': instance.userImageURL,
      'views': instance.views,
    };
