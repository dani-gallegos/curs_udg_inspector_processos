import 'package:cursudg_client/generated/grpc/process_models.pb.dart';
import 'package:cursudg_client/route_arguments.dart';
import 'package:cursudg_client/services/process_viewer/process_viewer_service.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final _service = new ProcessViewerService();

  DetailsPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailsPageArguments;
    print(args.id);
    return Scaffold(
      appBar: AppBar(
        title: Text("Process detail: ${args.id}"),
      ),
      body: Center(
        child: FutureBuilder(
          future: _service.get(args.id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final dto = snapshot.data as ProcessDetailDto;
              print('${dto.totalProcessorTime.toString().replaceAll("\n", " ")}');
              return Column(
                children: [
                  ListTile(
                    title: Text('Id: ${dto.id}'),
                  ),
                  ListTile(
                    title: Text('Name: ${dto.name}'),
                  ),
                  ListTile(
                    title: Text('Module name: ${dto.moduleName}'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('File name: ${dto.fileName}'),
                    dense: true,
                  ),
                  ListTile(
                    title: Text(
                        'Total processor time: ${dto.totalProcessorTime.toString().replaceAll("\n", " ")}'),
                    dense: true,
                  ),
                  ListTile(
                    title: Text(
                        'User processor time: ${dto.userProcessorTime.toString().replaceAll("\n", " ")}'),
                    dense: true,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextButton(
                      onPressed: () {
                        _service.kill(dto.id);
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          children: [Icon(Icons.cancel), Text('Kill process')],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Text('Loading');
          },
        ),
      ),
    );
  }
}
