class BatchModel {
  BatchModel({
    required this.jenisTernak,
    required this.namaPeternakan,
    required this.lokasiPeternakan,
    required this.namaDistributor,
    required this.lokasiDistributor,
    required this.tanggalMulai,
    required this.tanggalPotong,
    required this.tanggalKemas,
    required this.id,
    required this.status,
  });

  factory BatchModel.fromJson(Map<String, dynamic> json) {
    return BatchModel(
      namaPeternakan: json['peternakan'],
      lokasiPeternakan: json['lokasi_peternakan'],
      namaDistributor: json['distributor'],
      lokasiDistributor: json['lokasi_distributor'],
      tanggalMulai: json['tgl_mulai'],
      tanggalPotong: json['tgl_potong'],
      tanggalKemas: json['tgl_kemas'],
      id: json['id'],
      jenisTernak: json['jenis_ternak'],
      status: json['status'],
    );
  }

  final String? status;
  final String? id;
  final String? namaPeternakan;
  final String? lokasiPeternakan;
  final String? namaDistributor;
  final String? lokasiDistributor;
  final String? jenisTernak;
  final DateTime? tanggalMulai;
  final DateTime? tanggalPotong;
  final DateTime? tanggalKemas;
}
