import 'dart:convert';

part 'line_bean.g.dart';

/// 线路
class LineBean {
  //线路公开参数
  static const int LINE_PUBLIC = 1;
  static const int LINE_PRIVATE = 2;

  //收藏添加删除判断使用
  static const int YES = 1;
  static const int NO = 0;

  String id; //路线ID
  String routeTitle; //路线名
  String kilometreNumber; //徒步千米数
  int interestType; //兴趣类型
  String img; //路线图片
  String duration; //历史时长
  String rise; //上升海拔
  String decline; //下降海拔
  String routeDescribe; //线路描述
  String routeGroupPoint; //点合集
  String pictureGroupPoint; //图片群点
  int releaseType = LINE_PUBLIC; //是否公开  1公开  其他未公开
  String createTime; //发布时间
  String userId; //发布人ID
  int likeNum; //点赞数
  int commentNum; //评论数
  String headImage; //发布人头像
  String nickName; //发布人名称
  int isCollect; //是否收藏  1收藏  其他未收藏
  int isTrail; //是否添加到我的旬  1添加  其他未添加
  int isDel; //是否删除
  String pace; //速度
  String average; //平均速度
  String maximumSpeed; //最大速度
  bool isOnline; //是否线上

  LineBean({
    this.id,
    this.routeTitle,
    this.kilometreNumber = '0',
    this.interestType,
    this.img,
    this.duration = '0',
    this.rise = '0',
    this.decline = '0',
    this.routeDescribe = '',
    this.routeGroupPoint = '',
    this.pictureGroupPoint = '',
    this.createTime,
    this.userId,
    this.likeNum = 0,
    this.commentNum,
    this.headImage,
    this.nickName,
    this.isCollect = NO,
    this.isTrail = NO,
    this.isDel = NO,
    this.pace = '0',
    this.average = '0',
    this.maximumSpeed = '0',
    this.isOnline = true,
  });

  factory LineBean.fromJson(Map<String, dynamic> json) =>
      _$LineBeanFromJson(json);

  Map<String, dynamic> toJson() => _$LineBeanToJson(this);

  static empty() {}
}
