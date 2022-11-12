
import 'package:flutter/material.dart';

class Setting_Options extends StatefulWidget {
  const Setting_Options({super.key});

  @override
  State<Setting_Options> createState() => _Setting_OptionsState();
}

class _Setting_OptionsState extends State<Setting_Options> {

@override
void initState() {
  super.initState();
  // Implement some initialization operations here.
}

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Text(
        "Tùy chọn cài đặt",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Row(
              children: const [
                Icon(Icons.store),
                Text('Thường ngày'),
              ],
            ),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Row(
              children: const [
                Icon(Icons.music_note),
                Text('Âm thanh'),
              ],
            ),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Row(
              children: const [
                Icon(Icons.store),
                Text('Chợ'),
              ],
            ),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Row(
              children: const [
                Icon(Icons.thumb_up),
                Text('Đánh giá'),
              ],
            ),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Row(
              children: const [
                Icon(Icons.mode_comment),
                Text(
                  'Phản hồi',
                ),
              ],
            ),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Row(
              children: const [
                Text('Điều khoản dịch vụ'),
              ],
            ),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: const Text(
              'Chính sách quyền riêng tư',
              maxLines: 3,
            ),
          )),
    ]),
  );
  }
}

