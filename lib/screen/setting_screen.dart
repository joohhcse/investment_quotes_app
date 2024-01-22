import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => SettingState();
}

class SettingState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('푸시 알림'),
                Switch(
                  value: true, // 여기에 실제 설정값을 넣어주세요.
                  onChanged: (value) {
                    // 설정값 변경 로직을 넣어주세요.
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('다크 모드'),
                Switch(
                  value: false, // 여기에 실제 설정값을 넣어주세요.
                  onChanged: (value) {
                    // 설정값 변경 로직을 넣어주세요.
                  },
                ),
              ],
            ),
            // 추가적인 설정 항목들을 원하는 만큼 추가할 수 있습니다.
          ],
        ),
      ),
    );
  }
}



