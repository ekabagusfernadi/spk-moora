// javascript smooth scroll & show pencarian

$(document).ready(function () {
  $(".page-scroll").on("click", function (e) {
    //ambil isi href
    var tujuan = $(this).attr("href");

    //tangkap elemen ybs
    var elemenTujuan = $(tujuan);

    //pindahkan scroll
    $("html").animate(
      {
        scrollTop: elemenTujuan.offset().top - 20,
      },
      1250,
      "easeInOutExpo"
    );

    e.preventDefault();
    // console.log(tujuan);
  });
});

$(document).ready(function () {
  $(".tombol-pencarian-scroll").on("click", function (e) {
    $(".content-pencarian").fadeIn(800);

    //ambil isi href
    var tujuan = $(this).attr("href");

    //tangkap elemen ybs
    var elemenTujuan = $(tujuan);

    //pindahkan scroll
    $("html").animate(
      {
        scrollTop: elemenTujuan.offset().top - 150,
      },
      1250,
      "easeInOutExpo"
    );

    e.preventDefault();
    // console.log(elemenTujuan);
  });
});

// akhir javascript smooth scroll & show pencarian

// awal penjumlahan bobot
$(document).ready(function () {
  $("#bobot-jumlah-santri, #bobot-jumlah-pengajar, #bobot-fasilitas, #bobot-biaya-masuk, #bobot-spp, #tombol-bobot").keyup(function () {
    var bobotJumlahSantri = 0 + $("#bobot-jumlah-santri").val();
    var bobotJumlahPengajar = 0 + $("#bobot-jumlah-pengajar").val();
    var bobotFasilitas = 0 + $("#bobot-fasilitas").val();
    var bobotBiayaMasuk = 0 + $("#bobot-biaya-masuk").val();
    var bobotSpp = 0 + $("#bobot-spp").val();

    var total = parseInt(bobotJumlahSantri) + parseInt(bobotJumlahPengajar) + parseInt(bobotFasilitas) + parseInt(bobotBiayaMasuk) + parseInt(bobotSpp);
    $("#total").val(total);

    if (total == 10) {
      $("#tombol-bobot").html(`<button class="btn btn-success btn-block tombol-cari" type="submit">Proses</button>`);
    } else {
      $("#tombol-bobot").html(`<button class="btn btn-danger btn-block tombol-cari" type="submit" disabled>Proses</button>`);
    }
  });
});
// akhir penjumlahan bobot

// awal input hanya angka
function hanyaAngka(event) {
  var angka = event.which ? event.which : event.keyCode;
  if (angka != 46 && angka > 31 && (angka < 48 || angka > 57)) return false;
  return true;
}
// akhir input hanya angka

// Material Select Initialization
// $(document).ready(function () {
//     $('.mdb-select').materialSelect();
// });

// Ajax Pagination

$(document).ready(function () {
  // Detect pagination click
  $("#pagination").on("click", "a", function (e) {
    e.preventDefault();
    var pageno = $(this).attr("data-ci-pagination-page");
    loadPagination(pageno);
  });

  loadPagination(0);

  // $('.pencarian-ajax').on('click', function () {
  //     // console.log('uye');
  //     const id = document.querySelector("#jumlah-pengajar").value;
  //     // console.log(id);
  //     function loadPagination(pagno) {
  //         var id = 3;
  //         $.ajax({
  //             url: 'http://localhost/spk-moora/Home/loadRecord',
  //             data: {
  //                 pagno: pagno,
  //                 id: id
  //                 // pagno: pagno
  //             },
  //             type: 'post',
  //             dataType: 'json',
  //             success: function (data) {
  //                 $('#pagination').html(data.pagination);
  //                 $('#pagination a').addClass('page-link font-weight-normal');
  //                 $('#pagination strong').addClass('page-link bg-primary white');
  //                 // console.log(response.pagination)
  //                 createTable(data.result, data.row);
  //             }
  //         });
  //     }

  // });

  // function loadPagination(pagno) {
  //     var id = 3;
  //     $.ajax({
  //         url: 'http://localhost/spk-moora/Home/loadRecord',
  //         data: {
  //             pagno: pagno,
  //             id: id
  //             // pagno: pagno
  //         },
  //         type: 'post',
  //         dataType: 'json',
  //         success: function (data) {
  //             $('#pagination').html(data.pagination);
  //             $('#pagination a').addClass('page-link font-weight-normal');
  //             $('#pagination strong').addClass('page-link bg-primary white');
  //             // console.log(response.pagination)
  //             createTable(data.result, data.row);
  //         }
  //     });
  // }

  // Load pagination
  function loadPagination(pagno) {
    $.ajax({
      url: "http://localhost/spk-moora/Home/loadRecord/" + pagno,
      type: "get",
      dataType: "json",
      success: function (response) {
        $("#pagination").html(response.pagination);
        $("#pagination a").addClass("page-link font-weight-normal");
        $("#pagination strong").addClass("page-link bg-primary white");
        // console.log(response.pagination)
        createTable(response.result, response.row);
      },
    });
  }

  // Create table list
  function createTable(result, sno) {
    sno = Number(sno);
    $("#postsList").empty();
    for (index in result) {
      // var id = result[index].id;
      // var namaPesantren = result[index].nama_pesantren;
      // var gambar1 = result[index].gambar1;
      // var content = result[index].content;
      // content = content.substr(0, 60) + " ...";
      // var link = result[index].link;
      sno += 1;

      var isiKontenPesantren =
        `<div class="col-lg-4 mb-3 col-md-6">
                                        <div class="card tinggi-kartu">
                                            <img src="http://localhost/spk-moora/assets/img/pesantren/` +
        result[index].gambar1 +
        `" class="card-img-top" alt="gambarPesantren1">
                                            <div class="card-body">
                                                
                                                <h5 class="card-title font-viga">` +
        result[index].nama_pesantren +
        `</h5>
                                                <p class="card-subtitle mb-2 text-white font-small"><span class="border-0 border-secondary rounded pr-2 pl-2 mr-1 bg-secondary">` +
        result[index].jenis_pesantren +
        `</span> <span class="border-0 border-secondary rounded pr-2 pl-2 mr-1 bg-secondary">` +
        result[index].lembaga_agama +
        `</span> <span class="border-0 border-secondary rounded pr-2 pl-2 bg-secondary">` +
        result[index].kota_kabupaten_pesantren +
        `</span></p>
                                                <p class="card-subtitle mb-2 text-muted font-small">` +
        result[index].alamat +
        `</p>
                                                <p class="card-textz text-muted">Jumlah santri : ` +
        result[index].jumlah_santri +
        ` Santri</p>
                                                <p class="card-textz text-muted">Jumlah pengajar : ` +
        result[index].jumlah_pengajar +
        ` Pengajar</p>
                                                
                                                <p class="card-textz text-muted">Fasilitas : ` +
        result[index].fasilitas +
        `</p>
                                                <p class="card-textz text-muted">Biaya masuk : Rp. ` +
        result[index].biaya_masuk +
        `</p>
                                                <p class="card-textz text-muted">SPP perbulan : Rp. ` +
        result[index].spp +
        `</p>
                                                <button type="button" class="btn btn-primary mt-3 tombol-tengah-perbesar detailAjax" data-toggle="modal" data-target="#modalQuickView" data-id="` +
        result[index].id +
        `">Detail</button>
                                            </div>
                                        </div>
                                    </div>`;
      // tr += "<td><a href='" + nama_pesantren + "' target='_blank' >" + nama_pesantren + "</a></td>";
      // tr += "<td>" + nama_pesantren + "</td>";
      // tr += "</tr>";
      $("#postsList").append(isiKontenPesantren);
    }

    tempelOnclick();
  }

  // Ajax get detail item

  function tempelOnclick() {
    $(".detailAjax").on("click", function () {
      // $('#tesAjax').html('Yesss');

      const id = $(this).data("id");
      // console.log(id);

      $.ajax({
        url: "http://localhost/spk-moora/Home/detailAjaxFunction",
        data: {
          id: id,
        },
        method: "post",
        dataType: "json",
        success: function (data) {
          $("#nama-pesantren").html(data.nama_pesantren);
          $("#santri-putra").html(data.santri_lk);
          $("#santri-putri").html(data.santri_pr);
          $("#biaya-masuk").html(data.biaya_masuk);
          $("#spp").html(data.spp);
          $("#jumlah-pengajar").html(data.jumlah_pengajar);
          $("#alamat-pesantren").html(data.alamat);
          $("#gambar1").html('<img class="d-block w-100" height="226px" src = "http://localhost/spk-moora/assets/img/pesantren/' + data.gambar1 + '" alt = "First slide">');
          $("#gambar2").html('<img class="d-block w-100" height="226px" src = "http://localhost/spk-moora/assets/img/pesantren/' + data.gambar2 + '" alt = "Second slide">');
          $("#gambar3").html('<img class="d-block w-100" height="226px" src = "http://localhost/spk-moora/assets/img/pesantren/' + data.gambar3 + '" alt = "Third slide">');
          $("#tentang-pesantren").html(data.tentang_pesantren);
          $("#fasilitas-pesantren").html(data.fasilitas_pesantren);
          $("#pendidikan-pesantren").html(data.pendidikan_pesantren);
          $("#website-pesantren a").attr("href", data.website);
          // console.log(data.nama_pesantren);
        },
      });
    });
  }

  // Akhir ajax get detail item
});

// Akhir Ajax Pagination
