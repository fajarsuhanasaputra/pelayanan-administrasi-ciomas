@extends('layouts.dashboard')
@section('content')
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded p-4">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('penduduk.index')}}">Data Kependudukan</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Anggota Keluarga</li>
                        <li class="breadcrumb-item active" aria-current="page">Create</li>
                    </ol>
                </nav>
                <h2 class="h4 mb-4">Tambah Data Anggota Keluarga</h2>
                <form action="{{ route('penduduk.store_anggota_keluarga') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="kk_id">Kartu Keluarga</label>
                                <select class="select2 form-control form-w-sm" id="kk_id" name="kk_id" required></select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="nik">NIK</label>
                                <input type="number" value="{{ old('nik')}}" class="form-control form-w-sm" id="nik" name="nik" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="nama">Nama Lengkap</label>
                                <input type="text" value="{{ old('nama')}}" class="form-control form-w-sm" id="nama" name="nama" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="jenis_kelamin">Jenis kelamin</label>
                                <select class="form-control form-w-sm" id="jenis_kelamin" name="jenis_kelamin" required>
                                    <option value="">Pilih</option>
                                    <option value="laki-laki">Laki-laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="tempat_lahir">Tempat Lahir</label>
                                <input type="text" value="{{ old('tempat_lahir')}}" class="form-control form-w-sm" id="tempat_lahir" name="tempat_lahir" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="tanggal_lahir">Tanggal Lahir</label>
                                <input type="date" value="{{ old('tanggal_lahir')}}" class="form-control form-w-sm" id="tanggal_lahir" name="tanggal_lahir" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="agama">Agama</label>
                                <select class="form-control form-w-sm" id="agama" name="agama" required>
                                    <option value="">Pilih</option>
                                    <option value="Islam">Islam</option>
                                    <option value="Kristen">Kristen</option>
                                    <option value="Katolik">Katolik</option>
                                    <option value="Hindu">Hindu</option>
                                    <option value="Budha">Budha</option>
                                    <option value="Konghucu">Konghucu</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="pendidikan">Pendidikan</label>
                                <select class="form-control form-w-sm" id="pendidikan" name="pendidikan" required>
                                    <option value="">Pilih</option>
                                    <option value="SD Sederajat">Sekolah Dasar (SD) / Sederajat</option>
                                    <option value="SMP Sederajat">Sekolah Menuju Pertama (SMP) / Sederajat</option>
                                    <option value="SMA Sederajat">Sekolah Menuju Atas (SMA) / Sederajat</option>
                                    <option value="Strata 1">Strata 1 (S1)</option>
                                    <option value="Strata 2">Strata 2 (S2)</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="pekerjaan">Pekerjaan</label>
                                <input type="text" value="{{ old('pekerjaan')}}" class="form-control form-w-sm" id="pekerjaan" name="pekerjaan" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="status_pernikahan">Status Pernikahan</label>
                                <select class="form-control form-w-sm" id="status_pernikahan" name="status_pernikahan" required>
                                    <option value="">Pilih</option>
                                    <option value="Belum Nikah">Belum Nikah</option>
                                    <option value="Sudah Menikah">Sudah Menikah</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="status_hubungan">Status Hubungan</label>
                                <select class="form-control form-w-sm" id="status_hubungan" name="status_hubungan" required>
                                    <option value="">Pilih</option>
                                    <option value="Kepala Keluarga">Kepala Keluarga</option>
                                    <option value="Istri">Istri</option>
                                    <option value="Anak">Anak</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="kewarganegaraan">Kewarganegaraan</label>
                                <select class="form-control form-w-sm" id="kewarganegaraan" name="kewarganegaraan" required>
                                    <option value="">Pilih</option>
                                    <option value="WNI">Warga Negara Indonesia (WNI)</option>
                                    <option value="WNA">Warga Negara Asing (WNA)</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="no_paspor">No Paspor</label>
                                <input type="number" value="{{ old('no_paspor')}}" class="form-control form-w-sm" id="no_paspor" name="no_paspor">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="no_kitas">No KITAS/KITAP</label>
                                <input type="number" value="{{ old('no_kitas')}}" class="form-control form-w-sm" id="no_kitas" name="no_kitas">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="nama_ayah">Nama Ayah</label>
                                <input type="text" value="{{ old('nama_ayah')}}" class="form-control form-w-sm" id="nama_ayah" name="nama_ayah" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="nama_ibu">Nama Ibu</label>
                                <input type="text" value="{{ old('nama_ibu')}}" class="form-control form-w-sm" id="nama_ibu" name="nama_ibu" required>
                            </div>
                        </div>
                    </div>
                    <div class="mt-3">
                        <button type="reset" class="btn btn-secondary">Reset</button>
                        <button type="submit" class="btn btn-primary ms-2">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@push('script')
<script>
    $.ajax({
        url: "{{ route('penduduk.select2KartuKeluarga') }}",
        method: 'GET',
        dataType: 'json',
        success: (response) => {
            let html = '<option selected>Pilih</option>';
            $.each(response, function(index, data) {
                html += `<option value="${data.id}">${data.no_kk} / ${data.kepala_keluarga}</option>`
            });
            $('#kk_id').html(html);
        }
    })
</script>
@endpush
@endsection
