import 'dart:async';

import 'package:cursudg_client/services/process_viewer/process_viewer_service.dart';
import 'package:flutter/material.dart';
import 'generated/grpc/process_models.pb.dart';
import 'load/list_loader.dart';
import 'load/loading.dart';

class MyHomePage2 extends StatefulWidget {
  final String title;

  MyHomePage2({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  final _service = new ProcessViewerService();
  final _listLoaderKey = GlobalKey<ListLoaderState<ProcessDto>>();
  int _countProcesses = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title} (count: $_countProcesses)"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async {
              await _listLoaderKey.currentState?.refresh();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Refreshed!"),
                ),
              );
            },
          ),
        ],
      ),
      body: Loading(
        child: ListLoader<ProcessDto>(
            key: _listLoaderKey,
            getList: _service.list,
            builder: (items) {
              scheduleMicrotask(() {
                setState(() {
                  _countProcesses = items.length;
                });
              });
              return ListView.separated(
                itemBuilder: (innerContext, position) {
                  var item = items[position];
                  return ListTile(
                    dense: true,
                    title: Text('Process ${item.id} ${item.name}'),
                    subtitle: Tooltip(
                      message: item.fileName,
                      child: Text(
                        item.fileName,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    onTap: () {
                      print('on tap');
                    },
                  );
                },
                separatorBuilder: (innerContext, position) => Divider(),
                itemCount: items.length,
              );
            }),
      ),
    );
  }
}
