<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap-4.4.1-dist/css/bootstrap.min.css">
  <!-- My CSS -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/css/style.css">
  <!-- Google Fonts -->
  <link href="<?= base_url(); ?>assets/font/Viga/Viga.css" rel="stylesheet">



  <title><?php echo $judul; ?></title>

</head>

<body>


  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
      <a class="navbar-brand page-scroll" id="home" href="<?= base_url(); ?>">Moora</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav ml-auto">
          <a class="nav-item nav-link active" href="<?= base_url(); ?>">Home<span class="sr-only">(current)</span></a>
          <!-- <a class="nav-item nav-link" href="<?= base_url(); ?>mahasiswa">Mahasiswa</a>
          <a class="nav-item nav-link hasil">Hasil</a> -->
          <a class="nav-item nav-link page-scroll" href="#daftarPesantren">List Pesantren</a>
          <a class="nav-item nav-link btn btn-primary text-white tombol tombol-pencarian-scroll" href="#content-pencarian">Cari <span class="icon-cari">&#x1F50D;</span></a>
        </div>
      </div>
    </div>
  </nav>
  <!-- akhir Navbar -->