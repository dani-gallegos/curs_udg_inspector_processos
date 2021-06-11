# cursudg_client

Projecte d'exemple i resum del curs UdG Dart - Flutter - GRPC

## To create the project:

flutter create -t app cursudg_client

## Afegir dependències

  protobuf: ^2.0.0
  grpc: ^3.0.0
  universal_platform: ^1.0.0-nullsafety

## Compilar els protos GRPC per al client:

Cal crear el directori: lib/generated/grpc/google/protobuf

`protoc --dart_out=grpc:lib/generated/grpc --proto_path ../CursUdG.GRPC/Protos/  ../CursUdG.GRPC/Protos/*.proto`

També cal compilar les dependències proto: 

`protoc --dart_out=grpc:lib/generated/grpc/google/protobuf --proto_path ~/Dev/protoc/include/google/protobuf/ ~/Dev/protoc/include/google/protobuf/duration.proto`

