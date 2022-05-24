import 'package:flutter_flow/core/enums/model_download_strategies.dart';

class ModelDownloadPayload {
  final String model;
  final ModelDownloadStategy stategy;

  ModelDownloadPayload({required this.model, required this.stategy});
}
