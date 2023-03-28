import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'results_u_k_record.g.dart';

abstract class ResultsUKRecord
    implements Built<ResultsUKRecord, ResultsUKRecordBuilder> {
  static Serializer<ResultsUKRecord> get serializer =>
      _$resultsUKRecordSerializer;

  @BuiltValueField(wireName: 'access_code')
  String? get accessCode;

  double? get bmi;

  double? get waist;

  @BuiltValueField(wireName: 'bp_sys')
  int? get bpSys;

  @BuiltValueField(wireName: 'bp_dia')
  int? get bpDia;

  double? get hba1c;

  @BuiltValueField(wireName: 'body_fat')
  double? get bodyFat;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ResultsUKRecordBuilder builder) => builder
    ..accessCode = ''
    ..bmi = 0.0
    ..waist = 0.0
    ..bpSys = 0
    ..bpDia = 0
    ..hba1c = 0.0
    ..bodyFat = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resultsUK');

  static Stream<ResultsUKRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ResultsUKRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ResultsUKRecord._();
  factory ResultsUKRecord([void Function(ResultsUKRecordBuilder) updates]) =
      _$ResultsUKRecord;

  static ResultsUKRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createResultsUKRecordData({
  String? accessCode,
  double? bmi,
  double? waist,
  int? bpSys,
  int? bpDia,
  double? hba1c,
  double? bodyFat,
}) {
  final firestoreData = serializers.toFirestore(
    ResultsUKRecord.serializer,
    ResultsUKRecord(
      (r) => r
        ..accessCode = accessCode
        ..bmi = bmi
        ..waist = waist
        ..bpSys = bpSys
        ..bpDia = bpDia
        ..hba1c = hba1c
        ..bodyFat = bodyFat,
    ),
  );

  return firestoreData;
}
