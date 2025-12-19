import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/apps/provider/app_3/app_1/view_models/product_list_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: PageView(
        children: [
          V1(),
          V1(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProductListViewModel>().changeValue(1);
        },
      ),
    );
  }
}

class V1 extends StatefulWidget {
  const V1({Key? key}) : super(key: key);

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  @override
  void initState() {
    super.initState();

    // 哪種做法好？
    // Method 1
    Future.microtask(() {
      context.read<ProductListViewModel>().changeValue(1);
    });

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Method 2 : 使用 WidgetsBinding.addPostFrameCallback
    // context.read<ProductListViewModel>().changeValue(1, afterBuild: true);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductListViewModel>(
      builder: (_, v, __) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(v.count.toString()),
              ElevatedButton(
                onPressed: () {
                  v.changeValue(1);
                },
                child: Text('Add'),
              ),
            ],
          ),
        );
      },
    );
  }
}





