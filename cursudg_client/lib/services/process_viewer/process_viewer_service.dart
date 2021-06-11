import 'package:cursudg_client/generated/grpc/process_models.pb.dart';
import 'package:cursudg_client/services/process_viewer/process_viewer_interface.dart';
import '../../generated/grpc/process_viewer.pbgrpc.dart';

class ProcessViewerService {
  final ProcessViewer _processViewer = ProcessViewer();

  Future<bool> login(String user, String password) async {
    
    _processViewer.authToken = 'pepito';
    return true;
  }

  Future<List<ProcessDto>> list() async {
    try {
      final request = ListRequest();
      final response = await _processViewer.client.list(request);
      return response.items;
      //for (var item in response.items) print('Item: ${item.id} ${item.name} ${item.fileName} ');
    } catch (e) {
      throw e;
    }
  }

  Future<ProcessDetailDto?> get(int id) async {
    final request = GetRequest()..id = id;
    final response = await _processViewer.client.get(request);
    if (!response.found) return null;
    return response.item;
  }

  Future<bool> kill(int id) async {
    final request = KillRequest()..id = id;
    final response = await _processViewer.client.kill(request);
    return response.result;
  }
}
