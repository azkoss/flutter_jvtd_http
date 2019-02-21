// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineBean _$LineBeanFromJson(Map<String, dynamic> json) {
  return LineBean(
      id: json['id'] as String,
      routeTitle: json['routeTitle'] as String,
      kilometreNumber: json['kilometreNumber'] as String,
      interestType: json['interestType'] as int,
      img: json['img'] as String,
      duration: json['duration'] as String,
      rise: json['rise'] as String,
      decline: json['decline'] as String,
      routeDescribe: json['routeDescribe'] as String,
      routeGroupPoint: json['routeGroupPoint'] as String,
      pictureGroupPoint: json['pictureGroupPoint'] as String,
      createTime: json['createTime'] as String,
      userId: json['userId'] as String,
      likeNum: json['likeNum'] as int,
      commentNum: json['commentNum'] as int,
      headImage: json['headImage'] as String,
      nickName: json['nickName'] as String,
      isCollect: json['isCollect'] as int,
      isTrail: json['isTrail'] as int,
      isDel: json['isDel'] as int,
      pace: json['pace'] as String,
      average: json['average'] as String,
      maximumSpeed: json['maximumSpeed'] as String,
      isOnline: json['isOnline'] as bool)
    ..releaseType = json['releaseType'] as int;
}

Map<String, dynamic> _$LineBeanToJson(LineBean instance) => <String, dynamic>{
      'id': instance.id,
      'routeTitle': instance.routeTitle,
      'kilometreNumber': instance.kilometreNumber,
      'interestType': instance.interestType,
      'img': instance.img,
      'duration': instance.duration,
      'rise': instance.rise,
      'decline': instance.decline,
      'routeDescribe': instance.routeDescribe,
      'routeGroupPoint': instance.routeGroupPoint,
      'pictureGroupPoint': instance.pictureGroupPoint,
      'releaseType': instance.releaseType,
      'createTime': instance.createTime,
      'userId': instance.userId,
      'likeNum': instance.likeNum,
      'commentNum': instance.commentNum,
      'headImage': instance.headImage,
      'nickName': instance.nickName,
      'isCollect': instance.isCollect,
      'isTrail': instance.isTrail,
      'isDel': instance.isDel,
      'pace': instance.pace,
      'average': instance.average,
      'maximumSpeed': instance.maximumSpeed,
      'isOnline': instance.isOnline
    };
