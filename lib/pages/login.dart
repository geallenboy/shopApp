import 'dart:convert';

import 'package:shop/api/login.dart';
import 'package:flutter/material.dart';
import 'package:shop/icon/garron_icon.dart';
import 'package:get/get.dart';

class LoginIndex extends StatefulWidget {
  const LoginIndex({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginIndexState();
  }
}

class _LoginIndexState extends State<LoginIndex> {
  var url =
      "/9j/4AAQSkZJRgABAgAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAA8AKADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDtrW1ga1hZoIySikkoOeKsCztv+feL/vgU2z/484P+ua/yqyKiMY8q0IjGPKtCIWdr/wA+0P8A3wKeLK1/59of+/YqQVWuNVsbO5jt7m6ihlkUsiyNjcB1xmrjT5naKuPlj2JxZWn/AD6w/wDfsU4WNp/z6wf9+xWXqHizQ9LV";

  var uuid = "";
  var password = "";
  var username = "";
  var code = "";

  @override
  void initState() {
    getImg();
  }

  void getImg() async {
    try {
      var reps = await getImage();
      setState(() {
        url = reps.data["img"];
        uuid = reps.data["uuid"];
      });
      // print(url);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AIGC",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
                child: ListView(
              padding: const EdgeInsets.only(left: 40, right: 40),
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: LogInIcon(),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(width: 1.0)),
                  child: TextField(
                    onChanged: (value) {
                      username = value;
                    },
                    decoration: const InputDecoration(
                        icon: Icon(GarronIcons.user),
                        border: InputBorder.none,
                        hintText: "请输入用户名"),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(width: 1.0)),
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: const InputDecoration(
                        icon: Icon(GarronIcons.password),
                        border: InputBorder.none,
                        hintText: "请输入密码"),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0)),
                      border: Border.all(width: 1.0)),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 7,
                        child: TextField(
                          onChanged: (value) {
                            code = value;
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              icon: Icon(GarronIcons.code),
                              border: InputBorder.none,
                              hintText: "请输入验证码"),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              getImg();
                            },
                            child: Image.memory(
                              const Base64Decoder().convert(url),
                              fit: BoxFit.fill,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0))))),
                    onPressed: () async {
                      if (username.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  content: Text(
                                    "用户名不能为空!",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ));
                      }
                      if (password.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  content: Text(
                                    '密码不能为空！！',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ));
                        return;
                      }
                      if (code.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  content: Text(
                                    '验证码不能为空！！',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ));
                        return;
                      }
                      var requestData = {
                        "uuid": uuid,
                        "username": username,
                        "password": password,
                        "code": code
                      };
                      var data = await logInByClient(requestData);
                      var resp = jsonDecode(data.toString());
                      if (resp["code"] == 200) {
                        Get.toNamed("/home");
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  content: Text(
                                    resp["msg"],
                                    style: const TextStyle(color: Colors.cyan),
                                  ),
                                ));
                        getImg();
                      }
                    },
                    child: const Text(
                      "登陆",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class LogInIcon extends StatelessWidget {
  const LogInIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        '登陆',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
    );
  }
}