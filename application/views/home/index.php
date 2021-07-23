    <!-- Jumbotron -->
    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <h1 class="display-4"><span>SPK</span> Pemilihan <span>Pesantren</span> metode<br> Multi-Objective Optimization by Ratio Analysis (<span> Moora </span>)</h1>
        <a href="#content-pencarian" class="btn btn-primary btn-lg tombol tombol-pencarian-scroll">Bobot Kriteria</a>
      </div>
    </div>
    <!-- akhir Jumbotron -->


    <!-- container -->

    <div class="container content-pencarian" id="content-pencarian">

      <!-- info panel -->
      <div class="row justify-content-center">
        <div class="col-10 info-panel">
          <!-- Pencarian metode moora -->

          <form action="<?php echo base_url(); ?>Home/bobot" method="POST">
            <h2 class="judul-pencarian">Pencarian Pesantren</h2>
            <div class="pt-1 bg-primary mb-4"></div>
            <h5 class="judul-pencarian2">Pencarian Spesifik</h5>
            <div class="form-row">
              <div class="col-md-4 mb-3">
                <label for="validationDefault01">Jenis Pesantren</label>
                <select class="custom-select" id="spesifik-jenis-pesantren" name="spesifik-jenis-pesantren" required>
                  <option selected value="Semua jenis pesantren">Semua...</option>
                  <option value="Salafi">Pesantren Salafi</option>
                  <option value="Khalafi">Pesantren Khalafi</option>
                </select>
              </div>
              <div class="col-md-4 mb-3">
                <label for="validationDefault02">Lembaga Agama</label>
                <select class="custom-select" id="spesifik-lembaga-agama" name="spesifik-lembaga-agama" required>
                  <option selected value="Semua lembaga agama">Semua...</option>
                  <option value="Nahdlatul Ulama">Nahdlatul Ulama</option>
                  <option value="Muhammadiyah">Muhammadiyah</option>
                </select>
              </div>
              <div class="col-md-4 mb-3">
                <label for="validationDefault03">Kota/Kabupaten</label>
                <select class="custom-select" id="spesifik-kota" name="spesifik-kota" required>
                  <option selected value="Semua kota">Semua...</option>
                  <option value="Gresik">Gresik</option>
                  <option value="Jombang">Jombang</option>
                  <option value="Lamongan">Lamongan</option>
                  <option value="Madiun">Madiun</option>
                  <option value="Malang">Malang</option>
                  <option value="Ngawi">Ngawi</option>
                  <option value="Pamekasan">Pamekasan</option>
                  <option value="Ponorogo">Ponorogo</option>
                  <option value="Sidoarjo">Sidoarjo</option>
                </select>
              </div>
            </div>
            <h5 class="judul-pencarian2 mt-2">Bobot Kriteria</h5>
            <div class="form-row">
              <div class="col-md-4 mb-3">
                <label for="validationDefault04">Jumlah Santri</label>

                <input type="text" autocomplete="off" class="form-control" id="bobot-jumlah-santri" name="bobot-jumlah-santri" placeholder="Masukkan bobot..." required onkeypress="return hanyaAngka(event)">

              </div>
              <div class="col-md-4 mb-3">
                <label for="validationDefault05">Jumlah Pengajar</label>

                <input type="text" autocomplete="off" class="form-control" id="bobot-jumlah-pengajar" name="bobot-jumlah-pengajar" placeholder="Masukkan bobot..." required onkeypress="return hanyaAngka(event)">
                
              </div>
              <div class="col-md-4 mb-3">
                <label for="validationDefault06">Fasilitas</label>

                <input type="text" autocomplete="off" class="form-control" id="bobot-fasilitas" name="bobot-fasilitas" placeholder="Masukkan bobot..." required onkeypress="return hanyaAngka(event)">
                
              </div>



            </div>

            <div class="form-row">
              <div class="col-md-4 mb-3">
                <label for="validationDefault07">Biaya Masuk</label>

                <input type="text" autocomplete="off" class="form-control" id="bobot-biaya-masuk" name="bobot-biaya-masuk" placeholder="Masukkan bobot..." required onkeypress="return hanyaAngka(event)">
                
              </div>
              <div class="col-md-4 mb-3">
                <label for="validationDefault08">SPP</label>

                <input type="text" autocomplete="off" class="form-control" id="bobot-spp" name="bobot-spp" placeholder="Masukkan bobot..." required onkeypress="return hanyaAngka(event)">
                
              </div>

              <div class="col-md-4 mb-3">
                <label for="validationDefault09">Total Bobot Harus 10</label>

                <input type="text" id="total" class="form-control" placeholder="Total Bobot" readonly="">
              </div>

              

            </div>
            
            <div class="form-group mb-0" id="tombol-bobot">
              <button class="btn btn-primary btn-block tombol-cari" type="submit" disabled>Proses</button>
            </div>

          </form>

          <!-- akhir pencarian metode moora -->
        </div>

      </div>
      <!-- akhir info panel -->








    </div>
    <!-- akhir container -->