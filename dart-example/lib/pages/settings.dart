import 'package:flutter/material.dart';
import '../config.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController _cookieController =
  TextEditingController(text: Config.cookie);

  final TextEditingController _tokenController =
  TextEditingController(text: Config.token);

  final TextEditingController _userAgentController =
  TextEditingController(text: Config.userAgent);

  final TextEditingController _userIdController =
  TextEditingController(text: Config.userId.toString());

  final TextEditingController _proxyController =
  TextEditingController(text: '${Config.proxyIP}:${Config.proxyPort}');


  void _updateWebProxyDialog() {
    final TextEditingController proxyIPController =
    TextEditingController(text: Config.proxyIP);

    final TextEditingController proxyPortController =
    TextEditingController(text: Config.proxyPort.toString());

    showDialog<Null>(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 120,
              child: Column(
                children: [
                  TextField(
                    controller: proxyIPController,
                    decoration: InputDecoration(
                      labelText: '代理主机',
                    ),
                  ),
                  TextField(
                    controller: proxyPortController,
                    decoration: InputDecoration(
                      labelText: '代理端口',
                    ),
                    keyboardType: TextInputType.number,
                  )
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('取消')),
              ElevatedButton(
                  onPressed: () {
                    if (RegExp(
                        r'^(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5]):([0-9]|[1-9]\d|[1-9]\d{2}|[1-9]\d{3}|[1-5]\d{4}|6[0-4]\d{3}|65[0-4]\d{2}|655[0-2]\d|6553[0-5])$')
                        .hasMatch(
                        '${proxyIPController.value.text}:${proxyPortController.value.text}')) {
                      Config.proxyIP = proxyIPController.value.text;
                      try {
                        Config.proxyPort =
                            int.parse(proxyPortController.value.text);
                      } catch (e) {}

                      Navigator.of(context).pop();
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text('不合法的主机或端口号'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('确定'))
                              ],
                            );
                          });
                    }
                  },
                  child: Text('确定'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: _userIdController,
            onChanged: (value) {
              try {
                Config.userId = int.parse(value);
              } catch (e) {}
            },
            decoration: InputDecoration(labelText: '你自己的用户id'),
          ),
          SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              Config.cookie = value;
            },
            controller: _cookieController,
            decoration: InputDecoration(
              labelText: 'Cookie',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              Config.token = value;
            },
            controller: _tokenController,
            decoration: InputDecoration(
              labelText: 'Token',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              Config.userAgent = value;
            },
            controller: _userAgentController,
            decoration: InputDecoration(
              labelText: 'UserAgent',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            readOnly: true,
            controller: _proxyController,
            decoration: InputDecoration(
                labelText: '网络代理',
                prefixIcon: InkWell(
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Icon(Icons.edit_sharp),
                  onTap: () {
                    _updateWebProxyDialog();
                  },
                )),
          )
        ],
      ),
    );
  }
}
