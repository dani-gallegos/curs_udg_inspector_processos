import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../types.dart';
import 'loading.dart';

class ListLoader<T> extends StatefulWidget {
  final FunctionOf0<Future<List<T>>> getList;
  final FunctionOf1<List<T>, Widget> builder;

  ListLoader({
    required this.getList,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  ListLoaderState<T> createState() => ListLoaderState<T>();
}

class ListLoaderState<T> extends State<ListLoader<T>> {
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
    if (mounted) LoadingNotification(_loading).dispatch(context);
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
