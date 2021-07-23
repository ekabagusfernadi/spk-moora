<div class="container">


    <!-- List Pesantren -->

    <!-- <form action="" method="POST">

        <input type="text" id="jumlah-pengajar" name="keyword" size="40" autofocus placeholder="masukan keyword pencarian.." autocomplete="off">
        <div class="pencarian-ajax btn btn-primary" id="btn-tes">Cari</div>

    </form> -->

    <?php
    $db = mysqli_connect("localhost", "root", "", "db_moora_php");
    function tampiltabel($arr)
    {
        echo '<table class="table table-bordered table-hover">';
        for ($i = 0; $i < count($arr); $i++) {
            echo '<tr>';
            for ($j = 0; $j < count($arr[$i]); $j++) {
                echo '<td bgcolor="#FFFFFF">' . $arr[$i][$j] . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    function tampilbaris($arr)
    {
        echo '<table class="table table-bordered table-hover">';
        echo '<tr>';
        for ($i = 0; $i < count($arr); $i++) {
            echo '<td bgcolor="#FFFFFF">' . $arr[$i] . '</td>';
        }
        echo "</tr>";
        echo '</table>';
    }

    function tampilkolom($arr)
    {
        echo '<table class="table table-bordered table-hover">';
        for ($i = 0; $i < count($arr); $i++) {
            echo '<tr>';
            echo '<td bgcolor="#FFFFFF">' . $arr[$i] . '</td>';
            echo "</tr>";
        }
        echo '</table>';
    }



    $alternatif = []; //array("Opo", "Xiomey", "Zenpon", "Xpera", "Glaxy", "Vio", "Ipone");

    $kriteria = []; //array("RAM", "Kamera", "Storage", "Harga", "Ketebalan");

    $tipe = []; //array("benefit", "benefit", "benefit", "cost", "cost");

    $bobot = []; //array(2.2, 2.1, 2.1, 2.8, 0.8);


    // Ambil data alternatif (pesantren)

    $queryalternatif = mysqli_query($db, "SELECT * FROM pesantren ORDER BY id");
    $i = 0;
    while ($dataalternatif = mysqli_fetch_array($queryalternatif)) {
        $alternatif[$i] = $dataalternatif['nama_pesantren'];
        $alternatifz[$i] = $dataalternatif['id'];
        $i++;
    }

    // Ambil data kriteria (jumlah_santri, jumlah_pengajar, fasilitas, dll)

    $querykriteria = mysqli_query($db, "SELECT * FROM kriteria ORDER BY id_kriteria");
    $i = 0;
    while ($datakriteria = mysqli_fetch_array($querykriteria)) {
        $kriteria[$i] = $datakriteria['nama_kriteria'];
        $tipe[$i] = $datakriteria['tipe'];
        $bobot[$i] = $datakriteria['bobot'];
        $i++;
    }

    $alternatifkriteria = [];
    // Nilai kriteria masing-masing alternatif
    /* array(
							array(3, 12, 32, 4000000, 8.8),											
							array(3, 10, 64, 3500000, 8),												                            
							array(2, 8, 64, 4000000, 8.8),					                           
							array(3, 12, 64, 6000000, 8.2),
							array(4, 12, 128, 5000000, 8.2),
							array(3, 8, 32, 3500000, 8.5),
							array(4, 12, 128, 7000000, 7.7)
						  );  */

    $queryalternatif = mysqli_query($db, "SELECT * FROM pesantren ORDER BY id");
    $i = 0;
    while ($dataalternatif = mysqli_fetch_array($queryalternatif)) {
        $querykriteria = mysqli_query($db, "SELECT * FROM kriteria ORDER BY id_kriteria");
        $j = 0;
        while ($datakriteria = mysqli_fetch_array($querykriteria)) {
            $queryalternatifkriteria = mysqli_query($db, "SELECT * FROM alternatif_kriteria WHERE id = '$dataalternatif[id]' AND id_kriteria = '$datakriteria[id_kriteria]'");
            $dataalternatifkriteria = mysqli_fetch_array($queryalternatifkriteria);

            $alternatifkriteria[$i][$j] = $dataalternatifkriteria['nilai'];
            if ($alternatifkriteria[$i][$j] == 'A' || $alternatifkriteria[$i][$j] == 'Baik') {
                $alternatifkriteria[$i][$j] = 3;
            } else if ($alternatifkriteria[$i][$j] == 'B' || $alternatifkriteria[$i][$j] == 'Cukup') {
                $alternatifkriteria[$i][$j] = 2;
            } else if ($alternatifkriteria[$i][$j] == 'C' || $alternatifkriteria[$i][$j] == 'Kurang') {
                $alternatifkriteria[$i][$j] = 1;
            };
            $j++;
        }
        $i++;
    }

    // Menentukan semua pembagi
    $pembagi = [];

    for ($i = 0; $i < count($kriteria); $i++) {
        $pembagi[$i] = 0;

        // Looping kuadrat dan penjumlahan $pembagi
        for ($j = 0; $j < count($alternatif); $j++) {
            $pembagi[$i] = $pembagi[$i] + ($alternatifkriteria[$j][$i] * $alternatifkriteria[$j][$i]);
        }
        // Fungsi akar kuadrat
        $pembagi[$i] = sqrt($pembagi[$i]);
    }


    // Melakukan pembagian (normalisasi)
    $normalisasi = [];

    for ($i = 0; $i < count($alternatif); $i++) {
        for ($j = 0; $j < count($kriteria); $j++) {
            $normalisasi[$i][$j] = $alternatifkriteria[$i][$j] / $pembagi[$j];
        }
    }

    // Pembobotan
    // Menghitung nilai optimasi (nilai max/benefit - nilai min/cost)
    $optimasi = [];

    for ($i = 0; $i < count($alternatif); $i++) {
        $optimasi[$i] = 0;
        for ($j = 0; $j < count($kriteria); $j++) {
            if ($tipe[$j] == "cost") {
                $optimasi[$i] = $optimasi[$i] - ($normalisasi[$i][$j] * $bobot[$j]);
            } else { //if ($tipe[$j] == "benefit") {
                $optimasi[$i] = $optimasi[$i] + ($normalisasi[$i][$j] * $bobot[$j]);
            }
        }
    }

    $alternatifrangking = [];
    $optimasirangking = [];

    for ($i = 0; $i < count($alternatif); $i++) {
        $optimasirangking[$i] = $optimasi[$i];
        $alternatifrangking[$i] = $alternatif[$i];
    }

    for ($i = 0; $i < count($alternatif); $i++) {
        for ($j = $i; $j < count($alternatif); $j++) {
            if ($optimasirangking[$j] > $optimasirangking[$i]) {
                $tmphasil = $optimasirangking[$i];
                $tmpalternatif = $alternatifrangking[$i];
                $optimasirangking[$i] = $optimasirangking[$j];
                $alternatifrangking[$i] = $alternatifrangking[$j];
                $optimasirangking[$j] = $tmphasil;
                $alternatifrangking[$j] = $tmpalternatif;
            }
        }
    }
    ?>
    <div id="perhitungan" style="display:none;">
        <br />
        alternatif =
        <?php tampilbaris($alternatif); ?>
        <br />
        kriteria =
        <?php tampilbaris($kriteria); ?>
        <br />
        tipe =
        <?php tampilbaris($tipe); ?>
        <br />
        bobot =
        <?php tampilbaris($bobot); ?>
        <br />
        nilai alternatifkriteria=
        <?php tampiltabel($alternatifkriteria); ?>
        <br />
        pembagi =
        <?php tampilbaris($pembagi); ?>
        <br />
        normalisasi=
        <?php tampiltabel($normalisasi); ?>
        <br />
        optimasi=
        <?php tampilkolom($optimasi); ?>
        <br />
        hasilranking=
        <?php tampilkolom($optimasirangking); ?>
        <br />
        alternatifranking=
        <?php tampilkolom($alternatifrangking); ?>
        <br />
        alternatif terbaik = <?php echo $alternatifrangking[0]; ?> dengan nilai optimasi terbesar = <?php echo $optimasirangking[0]; ?>
    </div>





    <!-- <br />
    <input type="button" value="Perhitungan" class="btn btn-primary" onclick="document.getElementById('perhitungan').style.display='block';" />
    <br /> -->
    <!-- <br />
    <div class="col-lg-10">
        <table class="table table-bordered table-hover" id="example">
            <thead>
                <tr>
                    <td bgcolor="#FFFFFF">Ranking</td>
                    <td bgcolor="#FFFFFF">Alternatif</td>
                    <td bgcolor="#FFFFFF">Nilai Optimasi</td>
                </tr>
            </thead>
            <tbody>
                <?php
                for ($i = 0; $i < count($optimasirangking); $i++) {
                ?>
                    <tr>
                        <td bgcolor="#FFFFFF"><?php echo ($i + 1); ?></td>
                        <td bgcolor="#FFFFFF"><?php echo $alternatifrangking[$i]; ?></td>
                        <td bgcolor="#FFFFFF"><?php echo $optimasirangking[$i]; ?></td>
                    </tr>
                <?php
                    // $sql = `UPDATE pesantren SET nilai_optimasi=` + $optimasirangking[$i] + ` echo WHERE id=` + $alternatifrangking[$i] + ``;
                    mysqli_query($db, "UPDATE pesantren SET nilai_optimasi ='$optimasi[$i]' WHERE id = '$alternatifz[$i]'");
                }
                ?>
            </tbody>
        </table>
    </div>
    <br />
    <br />
    Alternatif Produk Terbaik = <?php echo $alternatifrangking[0]; ?> dengan Nilai Optimasi Terbesar = <?php echo $optimasirangking[0]; ?>
    <br />
    <br /> -->






    <?php if ($this->session->flashdata('flash')) : ?>

        <!-- Mengambil data dari database untuk content pesan -->
        <?php

        $query = $this->db->get('spesifik');
        $spesifik = $query->result_array();

        $jenisPesantren = $spesifik[0]['jenis_pesantren'];
        $lembagaAgama = $spesifik[0]['lembaga_agama'];
        $kota = $spesifik[0]['kota_kabupaten'];

        $this->db->select('*');
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



        $this->db->order_by('nilai_optimasi', 'DESC');
        $query = $this->db->get();
        $query = $query->result_array();
        $namaPesantrenKotaTerbaik = $query[0]['nama_pesantren'];
        $nilaiOptimasiKotaTerbaik = $query[0]['nilai_optimasi'];

        ?>



        <div id="alert-hasil-bobot" class="alert alert-success alert-dismissible fade show mt-3" role="alert">

            <!-- Card header -->
            <div class="accordion md-accordion" id="accordionExz" role="tablist" aria-multiselectable="true">
                <div class="card-header mb-3 text-center" role="tab" id="headingOne1z">
                    <a class="info-pesantren alert-success" data-toggle="collapse" data-parent="#accordionExz" href="#collapseOne1z" aria-expanded="true" aria-controls="collapseOne1z">
                        <h5 class="mb-0">
                            Hasil Bobot Kriteria<i class="fas fa-angle-down rotate-icon"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapseOne1z" class="collapse" role="tabpanel" aria-labelledby="headingOne1z" data-parent="#accordionExz">
                    <div class="card-body">
                        <div class="row justify-content-center">

                            <div class="col-md-5">
                                <table class="table table-sm table-striped alert-success">
                                    <tr>
                                        <td class="text-center"><strong>Tags</strong></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Pesantren</td>
                                        <td>: <strong><?= $jenisPesantren; ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td>Lembaga Agama</td>
                                        <td>: <strong><?= $lembagaAgama; ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td>Kota/Kabupaten</td>
                                        <td>: <strong><?= $kota; ?></strong></td>
                                    </tr>

                                </table>
                            </div>


                            <div class="col-md-3">
                                <table class="table table-sm table-striped alert-success">

                                    <tr>
                                        <td class="text-center"><strong>BENEFIT</strong></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Jumlah Santri</td>
                                        <td>: <strong><?= $bobot[0]; ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td>Jumlah Pengajar</td>
                                        <td>: <strong><?= $bobot[1]; ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td>Fasilitas</td>
                                        <td>: <strong><?= $bobot[2]; ?></strong></td>
                                    </tr>


                                </table>
                            </div>



                            <div class="col-md-3">
                                <table class="table table-sm table-striped alert-success">
                                    <tr>
                                        <td class="text-center"><strong>COST</strong></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Biaya Masuk</td>
                                        <td>: <strong><?= $bobot[3]; ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td>SPP</td>
                                        <td>: <strong><?= $bobot[4]; ?></strong></td>
                                    </tr>

                                </table>
                            </div>
                        </div>


                    </div>

                </div>




                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>

                Pemilihan Pondok Pesantren Menggunakan Metode MOORA sebagai alternatif terbaik adalah Pondok Pesantren <strong><?php echo $namaPesantrenKotaTerbaik; ?></strong>.

                <!-- Pondok Pesantren <strong><?php echo $lembagaAgama; ?></strong> yang menggunakan metode pendidikan <strong><?php echo $jenisPesantren; ?></strong> dengan lokasi kota/kabupaten <strong><?php echo $kota; ?></strong> sebagai alternatif terbaik adalah <strong><?php echo $namaPesantrenKotaTerbaik; ?></strong>  dengan nilai optimasi sebesar <strong><?php echo $nilaiOptimasiKotaTerbaik; ?></strong>. -->

            </div>

        </div>






    <?php endif; ?>


    <div id="daftarPesantren" class="row mt-5">
        <h3 class="text-center col-md judul-daftar-pesantren">List Pesantren</h3>
    </div>

    <div id='postsList' class="row mt-3">


    </div>

    <!-- Akhir List Pesantren -->






    <!-- Pagination -->

    <!-- <nav aria-label="..."> -->

    <div href="#daftarPesantren" id='pagination' class="page-item pagination justify-content-center mt-3 mb-3 page-scroll"></div>

    <!-- </nav> -->

    <!-- Akhir Pagination -->




    <!-- Modal box item detail -->
    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalQuickView">Launchmodal</button> -->
    <!-- Modal: modalQuickView -->
    <div class="modal fade" id="modalQuickView" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-5">
                            <!--Carousel Wrapper-->
                            <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">
                                <!--Slides-->
                                <div class="carousel-inner" role="listbox">
                                    <div id="gambar1" class="carousel-item active">

                                    </div>
                                    <div id="gambar2" class="carousel-item">

                                    </div>
                                    <div id="gambar3" class="carousel-item">

                                    </div>
                                </div>
                                <!--/.Slides-->
                                <!--Controls-->
                                <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                                <!--/.Controls-->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-thumb" data-slide-to="0" class="active">
                                        <!-- <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(23).jpg" width="60"> -->
                                    </li>
                                    <li data-target="#carousel-thumb" data-slide-to="1">
                                        <!-- <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(24).jpg" width="60"> -->
                                    </li>
                                    <li data-target="#carousel-thumb" data-slide-to="2">
                                        <!-- <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(25).jpg" width="60"> -->
                                    </li>
                                </ol>
                            </div>

                            <h5 id="nama-pesantren" class="h5-responsive product-name mt-3 font-viga">

                            </h5>
                            <h6 class="h6-responsive card-subtitle mb-1 text-muted">
                                Santri Putra : <span id="santri-putra" class="mr-4">2300</span> Santri Putri : <span id="santri-putri">1200</span>
                            </h6>
                            <small class="h6-responsive" id="alamat-pesantren">
                                Jl. Raya Tarik, Tarik, Kec. Tarik, Kab. Sidoarjo Prov. Jawa Timur
                            </small>



                            <!--Body-->


                            <table class="mt-2 table table-sm table-borderless font-viga">


                                <tr>
                                    <td>Biaya Masuk</td>
                                    <td>: Rp. <span id="biaya-masuk">3000000</span></td>
                                </tr>

                                <tr>
                                    <td>SPP perbulan</td>
                                    <td>: Rp. <span id="spp">100000</span></td>
                                </tr>


                            </table>







                            <!--/.Carousel Wrapper-->
                        </div>

                        <div class="col-lg-7">


                            <!--Accordion wrapper-->
                            <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

                                <!-- Accordion card -->
                                <div class="card">

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="headingOne1">
                                        <a class="info-pesantren" data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
                                            <h5 class="mb-0">
                                                Tentang Pesantren<i class="fas fa-angle-down rotate-icon"></i>
                                            </h5>
                                        </a>
                                    </div>

                                    <!-- Card body -->
                                    <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1" data-parent="#accordionEx">
                                        <div class="card-body">
                                            <table class="table table-sm table-borderless">


                                                <!-- <tr>
                                                    <td>Pengajar</td>
                                                    <td>: <span id="jumlah-pengajar">7</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Siswa laki-laki</td>
                                                    <td>: <span id="siswa-lk">42</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Siswa perempuan</td>
                                                    <td>: <span id="siswa-pr">9</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Rombongan belajar</td>
                                                    <td>: <span id="rombongan-belajar">3</span></td>
                                                </tr> -->
                                                <div id=tentang-pesantren></div>




                                            </table>
                                        </div>
                                    </div>

                                </div>
                                <!-- Accordion card -->

                                <!-- Accordion card -->
                                <div class="card">

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="headingTwo2">
                                        <a class="collapsed info-pesantren" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
                                            <h5 class="mb-0">
                                                Fasilitas Pesantren<i class="fas fa-angle-down rotate-icon"></i>
                                            </h5>
                                        </a>
                                    </div>

                                    <!-- Card body -->
                                    <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2" data-parent="#accordionEx">
                                        <div class="card-body">
                                            <table class="table table-sm table-borderless">


                                                <!-- <tr>
                                                    <td>Akses internet</td>
                                                    <td>: <span id="akses-internet">Ada</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Sumber listrik</td>
                                                    <td>: <span id="sumber-listrik">Ada</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Daya listrik</td>
                                                    <td>: <span id="daya-listrik">2,200</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Luas tanah</td>
                                                    <td>: <span id="luas-pesantren">0</span> M²</td>
                                                </tr> -->

                                                <div id=fasilitas-pesantren></div>


                                            </table>
                                        </div>
                                    </div>

                                </div>
                                <!-- Accordion card -->

                                <!-- Accordion card -->
                                <div class="card">

                                    <!-- Card header -->
                                    <div class="card-header" role="tab" id="headingThree3">
                                        <a class="collapsed info-pesantren" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3">
                                            <h5 class="mb-0">
                                                Pendidikan Pesantren<i class="fas fa-angle-down rotate-icon"></i>
                                            </h5>
                                        </a>
                                    </div>

                                    <!-- Card body -->
                                    <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3" data-parent="#accordionEx">
                                        <div class="card-body">
                                            <table class="table table-sm table-borderless">


                                                <!-- <tr>
                                                    <td>Ruang kelas</td>
                                                    <td>: <span id="jumlah-ruang-kelas">3</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Laboratorium</td>
                                                    <td>: <span id="laboratorium">1</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Perpustakaan</td>
                                                    <td>: <span id="perpustakaan">1</span></td>
                                                </tr>
                                                <tr>
                                                    <td>Sanitasi siswa</td>
                                                    <td>: <span id="sanitasi-siswa">2</span></td>
                                                </tr> -->

                                                <div id=pendidikan-pesantren></div>


                                            </table>
                                        </div>
                                    </div>

                                </div>
                                <!-- Accordion card -->

                            </div>
                            <!-- Accordion wrapper -->



                            <div class="text-center mt-4">

                                <button class="btn btn-primary dekorasi-teks-none" id="website-pesantren"><a href="" target="_blank">Kunjungi Web</a>
                                    <!-- <i class="fas fa-cart-plus ml-2" aria-hidden="true"></i> -->
                                </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Akhir modal box item detail -->




</div>