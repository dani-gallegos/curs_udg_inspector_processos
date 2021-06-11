import 'package:cursudg_client/services/process_viewer/process_viewer_service.dart';
import 'package:flutter/material.dart';
import 'generated/grpc/process_models.pb.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ProcessDto> _items = [];
  final _service = new ProcessViewerService();

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    try {
      var llista = await _service.list();
      for (var item in llista) {
        setState(() {
          _items.add(item);
        });
      }
    } catch (e) {
      throw e;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (innerContext, position) {
          var item = _items[position];
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
        itemCount: _items.length,
      ),
    );
  }
}
