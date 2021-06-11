import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../types.dart';
import 'loading2.dart';
import 'package:provider/provider.dart';

class ListLoader2<T> extends StatefulWidget {
  final FunctionOf0<Future<List<T>>> getList;
  final FunctionOf1<List<T>, Widget> builder;

  ListLoader2({
    required this.getList,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  ListLoader2State<T> createState() => ListLoader2State<T>();
}

class ListLoader2State<T> extends State<ListLoader2<T>> {
  final _items = <T>[];
  var _loading = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      _loading = true;
      _notifyLoading();
      for (var m in await widget.getList()) {
        if (!mounted) break;
        setState(() {
          _items.add(m);
        });
      }
    } catch (e) {
      throw e;
    } finally {
      _loading = false;
      _notifyLoading();
    }
  }

  void _notifyLoading() {
    try {
      var appModel = context.read<AppModel>();
      appModel.loading = _loading;
    } catch (e) {
      throw e;
    }
  }

  Future<void> refresh() async {
    if (_loading) return;
    setState(() {
      _items.clear();
    });
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(_items);
  }
}
