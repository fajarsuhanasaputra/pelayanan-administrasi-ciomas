@extends('layouts.dashboard')
@section('content')
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded p-4">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('pengajuan.index') }}">List Pengajuan Surat</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Rincian</li>
                    </ol>
                </nav>
                <h2 class="h4 mb-4">Rincian Pengajuan Surat</h2>
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="3"><b>Identitas</b></td>
                        </tr>
                        <tr>
                            <td>Nama Lengkap</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->nama }}</b></td>
                        </tr>
                        <tr>
                            <td>NIK</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->nik }}</b></td>
                        </tr>
                        <tr>
                            <td>Tempat/Tgl Lahir</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->tempat_lahir }}, {{ $data->AnggotaKeluarga->tanggal_lahir }}</b></td>
                        </tr>
                        <tr>
                            <td>Jenis Kelamin</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->jenis_kelamin }}</b></td>
                        </tr>
                        <tr>
                            <td>Agama</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->agama }}</b></td>
                        </tr>
                        <tr>
                            <td>Status Perkawinan</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->status_pernikahan }}</b></td>
                        </tr>
                        <tr>
                            <td>Pekerjaan</td>
                            <td>:</td>
                            <td><b>{{ $data->AnggotaKeluarga->pekerjaan }}</b></td>
                        </tr>
                        <tr>
                            <td colspan="3"><b>Rincian Pengajuan</b></td>
                        </tr>
                        <tr>
                            <td>Kategori Surat</td>
                            <td>:</td>
                            <td><b>{{ request()->query('jenis_surat') }}</b></td>
                        </tr>
                        @if ($data->jenis)
                        <tr>
                            <td>Jenis</td>
                            <td>:</td>
                            <td><b>{{ $data->jenis }}</b></td>
                        </tr>
                        @endif
                        @if ($data->kategori)
                        <tr>
                            <td>Kategori</td>
                            <td>:</td>
                            <td><b>{{ $data->kategori }}</b></td>
                        </tr>
                        @endif
                        @if ($data->cerai)
                        <tr>
                            <td>Cerai</td>
                            <td>:</td>
                            <td><b>{{ $data->cerai }}</b></td>
                        </tr>
                        @endif
                        @if ($data->surat_bidan)
                        <tr>
                            <td>Surat Bidan</td>
                            <td>:</td>
                            <td>
                                <a href="{{ route('download', ['filename' => $data->pengantar_rw]) }}" class="btn btn-info btn-sm text-white"><i class="fa fa-download me-1"></i>Unduh File</a>
                            </td>
                        </tr>
                        @endif
                        @if ($data->penghasilan)
                        <tr>
                            <td>Penghasilan</td>
                            <td>:</td>
                            <td><b>Rp. {{ $data->penghasilan }}</b></td>
                        </tr>
                        @endif
                        @if ($data->nama_anak)
                        <tr>
                            <td>Nama Anak</td>
                            <td>:</td>
                            <td><b>{{ $data->nama_anak }}</b></td>
                        </tr>
                        @endif
                        @if ($data->nama_wali)
                        <tr>
                            <td>Nama Wali</td>
                            <td>:</td>
                            <td><b>{{ $data->nama_wali }}</b></td>
                        </tr>
                        @endif
                        @if ($data->tempat_lahir)
                        <tr>
                            <td>Tempat Lahir</td>
                            <td>:</td>
                            <td><b>{{ $data->tempat_lahir }}</b></td>
                        </tr>
                        @endif
                        @if ($data->tanggal_lahir)
                        <tr>
                            <td>Tanggal Lahir</td>
                            <td>:</td>
                            <td><b>{{ $data->tanggal_lahir }}</b></td>
                        </tr>
                        @endif
                        @if ($data->nama_pasangan)
                        <tr>
                            <td>Nama Pasangan</td>
                            <td>:</td>
                            <td><b>{{ $data->nama_pasangan }}</b></td>
                        </tr>
                        @endif
                        @if ($data->nama_ibu)
                        <tr>
                            <td>Nama Ibu</td>
                            <td>:</td>
                            <td><b>{{ $data->nama_ibu }}</b></td>
                        </tr>
                        @endif
                        @if ($data->nama_ayah)
                        <tr>
                            <td>Nama Ayah</td>
                            <td>:</td>
                            <td><b>{{ $data->nama_ayah }}</b></td>
                        </tr>
                        @endif
                        @if ($data->nik)
                        <tr>
                            <td>NIK Terkait</td>
                            <td>:</td>
                            <td><b>{{ $data->nik }}</b></td>
                        </tr>
                        @endif
                        @if ($data->alamat)
                        <tr>
                            <td>Alamat</td>
                            <td>:</td>
                            <td><b>{{ $data->alamat }}</b></td>
                        </tr>
                        @endif
                        @if ($data->pengantar_rw)
                        <tr>
                            <td>Surat Pengantar RW</td>
                            <td>:</td>
                            <td>
                                <a href="{{ route('download', ['filename' => $data->pengantar_rw]) }}" class="btn btn-info btn-sm text-white"><i class="fa fa-download me-1"></i>Unduh File</a>
                            </td>
                        </tr>
                        @endif
                        @if ($data->kk)
                        <tr>
                            <td>Kartu Keluarga</td>
                            <td>:</td>
                            <td>
                                <a href="{{ route('download', ['filename' => $data->kk]) }}" class="btn btn-info btn-sm text-white"><i class="fa fa-download me-1"></i>Unduh File</a>
                            </td>
                        </tr>
                        @endif
                        @if ($data->ktp)
                        <tr>
                            <td>KTP</td>
                            <td>:</td>
                            <td>
                                <a href="{{ route('download', ['filename' => $data->ktp]) }}" class="btn btn-info btn-sm text-white"><i class="fa fa-download me-1"></i>Unduh File</a>
                            </td>
                        </tr>
                        @endif
                        <tr>
                            <td>Status pengajuan</td>
                            <td>:</td>
                            <td><b>{{ $data->status }}</b></td>
                        </tr>
                        <tr>
                            <td>Tanggal Pengajuan</td>
                            <td>:</td>
                            <td><b>{{ $data->created_at }}</b></td>
                        </tr>
                        @if($suratKeluar)
                        <tr>
                            <td colspan="3"><b>Surat Keluar</b></td>
                        </tr>
                        <tr>
                            <td>No Surat</td>
                            <td>:</td>
                            <td><b>{{ $suratKeluar->no_surat }}</b></td>
                        </tr>
                        <tr>
                            <td>Hasil Surat</td>
                            <td>:</td>
                            <td>
                                <a href="{{ route('download', ['filename' => $suratKeluar->file]) }}" class="btn btn-info btn-sm text-white"><i class="fa fa-download me-1"></i>Unduh File</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Tanggal Surat Keluar</td>
                            <td>:</td>
                            <td><b>{{ $suratKeluar->created_at }}</b></td>
                        </tr>
                        @endif
                        @if($reject)
                        <tr>
                            <td colspan="3"><b>Penolakan Surat</b></td>
                        </tr>
                        <tr>
                            <td>Pesan penolakan</td>
                            <td>:</td>
                            <td><b>{{ $reject->pesan }}</b></td>
                        </tr>
                        <tr>
                            <td>Tanggal penolakan</td>
                            <td>:</td>
                            <td><b>{{ $reject->created_at }}</b></td>
                        </tr>
                        @endif
                    </tbody>
                </table>
                @if ($data->status === 'proses')
                <button type="button" class="btn btn-primary w-100 mb-1 mt-3" data-bs-toggle="modal" data-bs-target="#reply-surat">
                    <i class="fa fa-reply me-1"></i>
                    Submit Hasil Surat
                </button>
                <button type="button" class="btn btn-danger w-100" data-bs-toggle="modal" data-bs-target="#reject-surat">
                    <i class="fa fa-eject me-1"></i>
                    Tolak pengajuan
                </button>
                @endif
                <div id="reply-surat" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Submit Hasil Surat</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="{{ route('suratKeluar.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="modal-body">
                                    <input type="text" value="{{ $data->id }}" name="surat_id" hidden>
                                    <input type="text" value="{{ request()->query('jenis_surat') }}" name="jenis_surat" hidden>
                                    <input class="form-control" type="text" id="no_pengajuan" name="no_pengajuan" value="{{ $data->no_pengajuan }}" hidden>
                                    <div class="mb-2">
                                        <label class="form-label" for="no_surat">No Surat</label>
                                        <input class="form-control" type="text" id="no_surat" name="no_surat">
                                    </div>
                                    <div class="mb-2">
                                        <label class="form-label" for="file">File</label>
                                        <input type="file" class="form-control" id="file" name="file" accept="image/png,image/jpg,image/jpeg,.pdf" required>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div id="reject-surat" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Penolakan Surat</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="{{ route('penolakan.store') }}" method="POST">
                                @csrf
                                <div class="modal-body">
                                <input class="form-control" type="text" id="no_pengajuan" name="no_pengajuan" value="{{ $data->no_pengajuan }}" hidden>
                                    <input type="text" value="{{ $data->id }}" name="surat_id" hidden>
                                    <input type="text" value="{{ request()->query('jenis_surat') }}" name="jenis_surat" hidden>
                                    <div class="mb-2">
                                        <label class="form-label" for="pesan">Alasan penolakan</label>
                                        <textarea class="form-control" type="text" id="pesan" name="pesan"></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@push('script')
<script>
</script>
@endpush
@endsection
