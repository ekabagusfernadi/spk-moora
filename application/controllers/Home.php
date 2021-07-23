<?php

class Home extends CI_Controller
{
    public function index($nama = '')
    {
        $data['judul'] = 'Halaman Home';
        $data['nama'] = $nama;
        // $data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
        // if( $this->input->post('keyword') ) {
        //     $data['mahasiswa'] = $this->Mahasiswa_model->cariDataMahasiswa();
        // }


        // $jumlahDataPerHalaman = 3;
        // $jumlahData = count($this->db->get('pesantren')->result_array());
        // $jumlahHalaman = ceil($jumlahData / $jumlahDataPerHalaman);
        // $halamanAktif = (isset($_GET["halaman"])) ? $_GET["halaman"] : 1;
        // $awalData = ($jumlahDataPerHalaman * $halamanAktif) - $jumlahDataPerHalaman;


        // $data['pesantren'] = $this->Mahasiswa_model->getAllPesantrenPagination($jumlahDataPerHalaman, $awalData);
        // $data['jumlahHalaman'] = $jumlahHalaman;
        // $data['halamanAktif'] = $halamanAktif;

        // $query = $this->db->get('lokasi');
        // $spesifik = $query->result_array();
        // // var_dump($spesifik[0]['kota_kabupaten']);
        // echo $spesifik[0]['kota_kabupaten'];


        $this->load->view('templates/header', $data);
        $this->load->view('home/index', $data);
        $this->load->view('mahasiswa/index', $data);
        $this->load->view('templates/footer');
    }


    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mahasiswa_model');
        $this->load->library('form_validation');




        $this->load->helper('url');

        // Load Pagination library
        $this->load->library('pagination');
    }

    public function detailAjaxFunction()
    {
        echo json_encode($this->Mahasiswa_model->getDataDetail($_POST['id']));
    }



    public function loadRecord($rowno = 0)
    {

        // Row per page
        $rowperpage = 9;

        // Row position
        if ($rowno != 0) {
            $rowno = ($rowno - 1) * $rowperpage;
        }

        // All records count
        $allcount = $this->Mahasiswa_model->getrecordCount();

        // Get  records
        $users_record = $this->Mahasiswa_model->getData($rowno, $rowperpage);

        // Pagination Configuration
        $config['base_url'] = base_url() . 'Home/loadRecord';
        $config['use_page_numbers'] = TRUE;
        $config['total_rows'] = $allcount;
        $config['per_page'] = $rowperpage;

        // Initialize
        $this->pagination->initialize($config);

        // Initialize $data Array
        $data['pagination'] = $this->pagination->create_links();
        $data['result'] = $users_record;
        $data['row'] = $rowno;

        echo json_encode($data);
    }

    // Input bobot kriteria ke database dan tampilkan pesan
    public function bobot()
    {

        $this->Mahasiswa_model->bobotKriteria();

        $this->session->set_flashdata('flash', 'Ditambahkan');

        redirect(base_url() . '#alert-hasil-bobot');
    }







    public function tambah()
    {
        $data['judul'] = 'Form Tambah Data Mahasiswa';

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nrp', 'NRP', 'required|numeric');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('mahasiswa/tambah');
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->tambahDataMahasiswa();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('mahasiswa');
        }
    }

    public function hapus($id)
    {
        $this->Mahasiswa_model->hapusDataMahasiswa($id);
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('mahasiswa');
    }

    public function detail($id)
    {
        $data['judul'] = 'Detail Data Mahasiswa';
        $data['mahasiswa'] = $this->Mahasiswa_model->getMahasiswaById($id);
        $this->load->view('templates/header', $data);
        $this->load->view('mahasiswa/detail', $data);
        $this->load->view('templates/footer');
    }

    public function ubah($id)
    {
        $data['judul'] = 'Form Ubah Data Mahasiswa';
        $data['mahasiswa'] = $this->Mahasiswa_model->getMahasiswaById($id);
        $data['jurusan'] = ['Teknik Informatika', 'Teknik Mesin', 'Teknik Planologi', 'Teknik Pangan', 'Teknik Lingkungan'];

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nrp', 'NRP', 'required|numeric');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('mahasiswa/ubah', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Mahasiswa_model->ubahDataMahasiswa();
            $this->session->set_flashdata('flash', 'Diubah');
            redirect('mahasiswa');
        }
    }
}
