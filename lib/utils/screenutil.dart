import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

setWidth(int width) {
  return width.w;
}

setHeight(int height) {
  return height.h;
}

setR(int height) {
  return height.r;
}

setRadius(int radius) {
  return ScreenUtil().radius(radius);
}

setSp(int sp) {
  return sp.sp;
}
