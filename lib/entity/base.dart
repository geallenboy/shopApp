class BaseEntity {
  int? code;
  late String message;
  dynamic? data;
  BaseEntity(this.code, this.message, this.data);

  BaseEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'] as int?;
    message = json['message'] as String;
    if (json.containsKey('data')) {
      data = json['data'] as dynamic;
    }
  }
}
