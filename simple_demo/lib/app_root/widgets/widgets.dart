import 'package:flutter/material.dart';
import 'package:simple_demo/app_root/models/models.dart';

class AppDataView extends StatelessWidget {
  const AppDataView({
    super.key,
    required this.data,
  });

  final AppData data;

  Widget _buildItem(BuildContext context, AppDataItem data) {
    return ListTile(
      title: Text(data.name),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: data.builder));
      },
    );
  }

  Widget _buildGroup(BuildContext context, AppDataGroup data) {
    return ExpansionTile(
      title: Text(data.name),
      children: data.apps.map((e) => _buildAppData(context, e)).toList(),
    );
  }

  Widget _buildAppData(BuildContext context, AppData data) {
    switch (data) {
      case AppDataItem():
        return _buildItem(context, data);
      case AppDataGroup():
        return _buildGroup(context, data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppData(context, data);
  }
}
