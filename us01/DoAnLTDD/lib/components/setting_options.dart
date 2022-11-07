
import 'package:flutter/material.dart';

Widget Setting_Options() {
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
            child: Row(
              children: [
                Icon(Icons.store),
                const Text('Thường ngày'),
              ],
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            child: Row(
              children: [
                const Icon(Icons.music_note),
                const Text('Âm thanh'),
              ],
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            child: Row(
              children: [
                Icon(Icons.store),
                const Text('Chợ'),
              ],
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            child: Row(
              children: [
                Icon(Icons.thumb_up),
                const Text('Đánh giá'),
              ],
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            child: Row(
              children: [
                Icon(Icons.mode_comment),
                Text(
                  'Phản hồi',
                ),
              ],
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            child: Row(
              children: [
                const Text('Điều khoản dịch vụ'),
              ],
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
      Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: ElevatedButton(
            child: Text(
              'Chính sách quyền riêng tư',
              maxLines: 3,
            ),
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
    ]),
  );
}
