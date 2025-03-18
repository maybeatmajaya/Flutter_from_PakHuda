// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'mata_kuliah.g.dart';

@JsonSerializable()
class MataKuliah {
  String nama_mk;
  int sks_mk;
  String kode_mk;
  String dosen_pengampu;
  String jam_kuliah;
  int semester_tempuh;
  MataKuliah({
    required this.nama_mk,
    required this.sks_mk,
    required this.kode_mk,
    required this.dosen_pengampu,
    required this.jam_kuliah,
    required this.semester_tempuh,
  });
  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory MataKuliah.fromJson(Map<String, dynamic> json) => _$MataKuliahFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MataKuliahToJson(this);
}
