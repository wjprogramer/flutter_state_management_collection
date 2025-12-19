import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatefulWidget {
  const TestPage({
    Key? key,
    this.rxValue,
    this.onTap,
  }) : super(key: key);

  final Rx<int>? rxValue;
  final Function()? onTap;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late Rx<int> rxV;

  @override
  void initState() {
    super.initState();
    rxV = widget.rxValue ?? 1.obs;

    // 放在這邊會出錯
    // rxV.value++;;

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   rxV.value++;
    // });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    rxV.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextButton(
        onPressed: () {
          if (widget.onTap != null) {
            widget.onTap?.call();
            return;
          }
          rxV.value++;
        },
        child: Text(rxV.value.toString()),
      );
    });
  }
}
