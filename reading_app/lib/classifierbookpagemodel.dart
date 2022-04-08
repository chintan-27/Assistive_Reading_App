import 'package:reading_app/classifier.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class ClassifierBookPageModel extends Classifier {
  ClassifierBookPageModel({int? numThreads}) : super(numThreads: numThreads);

  @override
  String get modelName => 'model2.tflite';

  @override
  String get labelsFileName => 'assets/labels2.txt';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(127.5, 127.5);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 1);
}
