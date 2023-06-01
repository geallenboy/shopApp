import 'package:get/get.dart';

class LoginController extends GetxController {
  final url =
      "/9j/4AAQSkZJRgABAgAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAA8AKADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDtrW1ga1hZoIySikkoOeKsCztv+feL/vgU2z/484P+ua/yqyKiMY8q0IjGPKtCIWdr/wA+0P8A3wKeLK1/59of+/YqQVWuNVsbO5jt7m6ihlkUsiyNjcB1xmrjT5naKuPlj2JxZWn/AD6w/wDfsU4WNp/z6wf9+xWXqHizQ9LV";

  var uuid = "".obs;
  var password = "".obs;
  var username = "".obs;
  var code = "".obs;

  void usernameChange(name) {
    username.value = name;
    update();
  }

  /// 初始
  @override
  void onInit() {
    super.onInit();
  }

  /// 可 async 拉取数据
  /// 可触发展示交互组件
  /// onInit 之后
  @override
  void onReady() {
    super.onReady();
  }

  /// 关闭页面
  /// 可以缓存数据，关闭各种控制器
  /// dispose 之前
  @override
  void onClose() {
    super.onClose();
  }

  /// 被释放
  /// 手动 释放各种内存资源
  @override
  void dispose() {
    super.dispose();
  }
}
