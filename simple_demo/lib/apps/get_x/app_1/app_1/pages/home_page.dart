import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rxValue = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: PageView(
        children: [
          TestPage(),

          // 測試共享 Rx
          // 兩個頁面共用 Rx, 若跳轉到另外一個頁面，
          // 若在另一個頁面的 initState 階段就觸發 Rx 的更新，
          // 本來的頁面已經相依於 Rx 了，但不是處於 built 階段
          // 所以會導致錯誤 `setState() or markNeedsBuild() called during build`
          TestPage(
            rxValue: rxValue,
            onTap: _onTap,
          ),
          TestPage(
            rxValue: rxValue,
            onTap: _onTap,
          ),
        ],
      ),
    );
  }

  void _onTap() {
    rxValue.value++;
  }
}




