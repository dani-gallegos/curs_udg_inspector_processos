import '../../generated/grpc/process_viewer.pbgrpc.dart';
import 'process_viewer_stub.dart'
    if (dart.library.io) 'process_viewer_io.dart'
    if (dart.library.html) 'process_viewer_web.dart';

abstract class ProcessViewer {
  ProcessViewerClient get client;
  set authToken(String value);
  factory ProcessViewer() => getProcessViewer();
}
