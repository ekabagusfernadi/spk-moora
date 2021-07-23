<?php

class Mahasiswa_model extends CI_model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function getAllPesantren()
    {
        return $this->db->get('pesantren')->result_array();
    }



    public function getAllPesantrenPagination($jumlahDataPerHalaman, $awalData)
    {




        return $this->db->get('pesantren', $jumlahDataPerHalaman, $awalData)->result_array();






        // return $this->db->get('pesantren')->result_array();
    }

    public function getDataDetail($id)
    {
        return $this->db->get_where('pesantren', ['id' => $id])->row_array();
    }



    // Fetch records
    public function getData($rowno, $rowperpage)
    {

        $query = $this->db->get('spesifik');
        $spesifik = $query->result_array();
        // var_dump($spesifik[0]['kota_kabupaten']);
        $jenisPesantren = $spesifik[0]['jenis_pesantren'];
        $lembagaAgama = $spesifik[0]['lembaga_agama'];
        $kota = $spesifik[0]['kota_kabupaten'];

        // $jumlahPengajar = 60;
        // $this->db->like('jumlah_pengajar', 2);
        // $spesifik = getLokasi();
        $this->db->select('*');
        $this->db->from('pesantren');
        // $this->db->where('jumlah_pengajar <=', 60);

        if ($jenisPesantren != 'Semua jenis pesantren') {
            $this->db->where('jenis_pesantren', $jenisPesantren);
        };
        if ($lembagaAgama != 'Semua lembaga agama') {
            $this->db->where('lembaga_agama', $lembagaAgama);
        };
        if ($kota != 'Semua kota') {
            $this->db->where('kota_kabupaten_pesantren', $kota);
        };



        $this->db->limit($rowperpage, $rowno);
        $this->db->order_by('nilai_optimasi', 'DESC');
        $query = $this->db->get();

        return $query->result_array();
    }

    // Select total records
    public function getrecordCount()
    {
        $query = $this->db->get('spesifik');
        $spesifik = $query->result_array();
        // var_dump($spesifik[0]['kota_kabupaten']);
        $jenisPesantren = $spesifik[0]['jenis_pesantren'];
        $lembagaAgama = $spesifik[0]['lembaga_agama'];
        $kota = $spesifik[0]['kota_kabupaten'];

        $this->db->select('count(*) as allcount');
        $this->db->from('pesantren');

        if ($jenisPesantren != 'Semua jenis pesantren') {
            $this->db->where('jenis_pesantren', $jenisPesantren);
        };
        if ($lembagaAgama != 'Semua lembaga agama') {
            $this->db->where('lembaga_agama', $lembagaAgama);
        };
        if ($kota != 'Semua kota') {
            $this->db->where('kota_kabupaten_pesantren', $kota);
        };

        $query = $this->db->get();
        $result = $query->result_array();

        return $result[0]['allcount'];
    }

    // Input bobot kriteria ke database
    public function bobotKriteria()
    {
        $data = [
            "bobot" => $this->input->post('bobot-jumlah-santri', true)
        ];
        $this->db->where('nama_kriteria', 'jumlah_santri');
        $this->db->update('kriteria', $data);

        $data = [
            "bobot" => $this->input->post('bobot-jumlah-pengajar', true)
        ];
        $this->db->where('nama_kriteria', 'jumlah_pengajar');
        $this->db->update('kriteria', $data);

        $data = [
            "bobot" => $this->input->post('bobot-fasilitas', true)
        ];
        $this->db->where('nama_kriteria', 'fasilitas');
        $this->db->update('kriteria', $data);

        $data = [
            "bobot" => $this->input->post('bobot-biaya-masuk', true)
        ];
        $this->db->where('nama_kriteria', 'biaya_masuk');
        $this->db->update('kriteria', $data);

        $data = [
            "bobot" => $this->input->post('bobot-spp', true)
        ];
        $this->db->where('nama_kriteria', 'spp');
        $this->db->update('kriteria', $data);

        $data = [
            "jenis_pesantren" => $this->input->post('spesifik-jenis-pesantren', true)
        ];
        $this->db->where('id', '1');
        $this->db->update('spesifik', $data);

        $data = [
            "lembaga_agama" => $this->input->post('spesifik-lembaga-agama', true)
        ];
        $this->db->where('id', '1');
        $this->db->update('spesifik', $data);

        $data = [
            "kota_kabupaten" => $this->input->post('spesifik-kota', true)
        ];
        $this->db->where('id', '1');
        $this->db->update('spesifik', $data);
    }

    // public function getDataAlternatif()
    // {
    //     $this->db->select('*');
    //     $this->db->from('pesantren');
    //     $this->db->order_by('id');
    //     $query = $this->db->get();

    //     return $query->result_array();
    // }












    public function detailPesantren($id)
    {
        return $this->db->get_where('pesantren', ['id' => $id])->row_array();
    }



    public function tambahDataMahasiswa()
    {
        $data = [
            "nama" => $this->input->post('nama', true),
            "nrp" => $this->input->post('nrp', true),
            "email" => $this->input->post('email', true),
            "jurusan" => $this->input->post('jurusan', true)
        ];

        $this->db->insert('mahasiswa', $data);
    }

    public function hapusDataMahasiswa($id)
    {
        // $this->db->where('id', $id);
        $this->db->delete('mahasiswa', ['id' => $id]);
    }

    public function getMahasiswaById($id)
    {
        return $this->db->get_where('mahasiswa', ['id' => $id])->row_array();
    }

    public function ubahDataMahasiswa()
    {
        $data = [
            "nama" => $this->input->post('nama', true),
            "nrp" => $this->input->post('nrp', true),
            "email" => $this->input->post('email', true),
            "jurusan" => $this->input->post('jurusan', true)
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('mahasiswa', $data);
    }

    public function cariDataMahasiswa()
    {
        $keyword = $this->input->post('keyword', true);
        $this->db->like('nama', $keyword);
        $this->db->or_like('jurusan', $keyword);
        $this->db->or_like('nrp', $keyword);
        $this->db->or_like('email', $keyword);
        return $this->db->get('mahasiswa')->result_array();
    }
}
