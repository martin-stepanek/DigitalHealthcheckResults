// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_u_k_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResultsUKRecord> _$resultsUKRecordSerializer =
    new _$ResultsUKRecordSerializer();

class _$ResultsUKRecordSerializer
    implements StructuredSerializer<ResultsUKRecord> {
  @override
  final Iterable<Type> types = const [ResultsUKRecord, _$ResultsUKRecord];
  @override
  final String wireName = 'ResultsUKRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResultsUKRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accessCode;
    if (value != null) {
      result
        ..add('access_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bmi;
    if (value != null) {
      result
        ..add('bmi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.waist;
    if (value != null) {
      result
        ..add('waist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bpSys;
    if (value != null) {
      result
        ..add('bp_sys')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bpDia;
    if (value != null) {
      result
        ..add('bp_dia')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hba1c;
    if (value != null) {
      result
        ..add('hba1c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bodyFat;
    if (value != null) {
      result
        ..add('body_fat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ResultsUKRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultsUKRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'access_code':
          result.accessCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bmi':
          result.bmi = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'waist':
          result.waist = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'bp_sys':
          result.bpSys = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bp_dia':
          result.bpDia = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hba1c':
          result.hba1c = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'body_fat':
          result.bodyFat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ResultsUKRecord extends ResultsUKRecord {
  @override
  final String? accessCode;
  @override
  final double? bmi;
  @override
  final double? waist;
  @override
  final int? bpSys;
  @override
  final int? bpDia;
  @override
  final double? hba1c;
  @override
  final double? bodyFat;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ResultsUKRecord([void Function(ResultsUKRecordBuilder)? updates]) =>
      (new ResultsUKRecordBuilder()..update(updates))._build();

  _$ResultsUKRecord._(
      {this.accessCode,
      this.bmi,
      this.waist,
      this.bpSys,
      this.bpDia,
      this.hba1c,
      this.bodyFat,
      this.ffRef})
      : super._();

  @override
  ResultsUKRecord rebuild(void Function(ResultsUKRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultsUKRecordBuilder toBuilder() =>
      new ResultsUKRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultsUKRecord &&
        accessCode == other.accessCode &&
        bmi == other.bmi &&
        waist == other.waist &&
        bpSys == other.bpSys &&
        bpDia == other.bpDia &&
        hba1c == other.hba1c &&
        bodyFat == other.bodyFat &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessCode.hashCode);
    _$hash = $jc(_$hash, bmi.hashCode);
    _$hash = $jc(_$hash, waist.hashCode);
    _$hash = $jc(_$hash, bpSys.hashCode);
    _$hash = $jc(_$hash, bpDia.hashCode);
    _$hash = $jc(_$hash, hba1c.hashCode);
    _$hash = $jc(_$hash, bodyFat.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResultsUKRecord')
          ..add('accessCode', accessCode)
          ..add('bmi', bmi)
          ..add('waist', waist)
          ..add('bpSys', bpSys)
          ..add('bpDia', bpDia)
          ..add('hba1c', hba1c)
          ..add('bodyFat', bodyFat)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ResultsUKRecordBuilder
    implements Builder<ResultsUKRecord, ResultsUKRecordBuilder> {
  _$ResultsUKRecord? _$v;

  String? _accessCode;
  String? get accessCode => _$this._accessCode;
  set accessCode(String? accessCode) => _$this._accessCode = accessCode;

  double? _bmi;
  double? get bmi => _$this._bmi;
  set bmi(double? bmi) => _$this._bmi = bmi;

  double? _waist;
  double? get waist => _$this._waist;
  set waist(double? waist) => _$this._waist = waist;

  int? _bpSys;
  int? get bpSys => _$this._bpSys;
  set bpSys(int? bpSys) => _$this._bpSys = bpSys;

  int? _bpDia;
  int? get bpDia => _$this._bpDia;
  set bpDia(int? bpDia) => _$this._bpDia = bpDia;

  double? _hba1c;
  double? get hba1c => _$this._hba1c;
  set hba1c(double? hba1c) => _$this._hba1c = hba1c;

  double? _bodyFat;
  double? get bodyFat => _$this._bodyFat;
  set bodyFat(double? bodyFat) => _$this._bodyFat = bodyFat;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ResultsUKRecordBuilder() {
    ResultsUKRecord._initializeBuilder(this);
  }

  ResultsUKRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessCode = $v.accessCode;
      _bmi = $v.bmi;
      _waist = $v.waist;
      _bpSys = $v.bpSys;
      _bpDia = $v.bpDia;
      _hba1c = $v.hba1c;
      _bodyFat = $v.bodyFat;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultsUKRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultsUKRecord;
  }

  @override
  void update(void Function(ResultsUKRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResultsUKRecord build() => _build();

  _$ResultsUKRecord _build() {
    final _$result = _$v ??
        new _$ResultsUKRecord._(
            accessCode: accessCode,
            bmi: bmi,
            waist: waist,
            bpSys: bpSys,
            bpDia: bpDia,
            hba1c: hba1c,
            bodyFat: bodyFat,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
