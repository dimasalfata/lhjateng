<?php
    require 'function.php';
    $id = $_GET["id"];
    $data_artikel = query("SELECT artikel.judul, artikel.gambar, artikel.penulis, artikel.tglUpload, artikel.isi, tag.deskripsi FROM artikel JOIN tag ON artikel.id_tag = tag.id_tag WHERE id_artikel = $id")[0];

    session_start();
    if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
  }
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Start Meta Data -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- End Meta Data -->

    <!-- Start Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <!-- End Bootstrap -->

    <!-- Start API Google font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@500;600;700&display=swap" rel="stylesheet">
    <!-- End API Google font -->

    <!-- Csrf Token -->
    <meta name="csrf-token" content="<?= $_SESSION['csrf_token'] ?>">

    <!-- Start Style -->
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
    <!-- End Style -->

    <title>Leadershub Jawa Tengah</title>
    <link rel="icon" href="img/icon.png">

  </head>
  <body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
      //Mengirimkan Token Keamanan
      $.ajaxSetup({
              headers : {
                  'Csrf-Token': $('meta[name="csrf-token"]').attr('content')
              }
          });
        
      $('#form_komen').on('submit', function(event){
        event.preventDefault();
        let nama_pengirim = $('#nama_pengirim').val();
        let komen = $('#komen').val();
        
        if(nama_pengirim==''){
            alert("Nama Pengirim Harus disii");
        } else if(komen==''){
            alert("Komentar Harus disii");
        } else {
            var form_data = $(this).serialize();
            $.ajax({
              url:"tambah_komentar.php",
              method:"POST",
              data:form_data,
              success:function(data){
                $('#form_komen')[0].reset();
                $('#komentar_id').val('0');
                load_comment();
              }, error: function(data) {
                      console.log(data.responseText)
                    }
            })
        }
      });
 
      load_comment();
 
      function load_comment(){
        $.ajax({
          url:"ambil_komentar.php",
          method:"POST",
          success:function(data){
            $('#display_comment').html(data);
          }, error: function(data) {
                  console.log(data.responseText)
                }
        })
      }
 
      $(document).on('click', '.reply', function(){
        var komentar_id = $(this).attr("id");
        $('#komentar_id').val(komentar_id);
        $('#nama_pengirim').focus();
      });
    });
  </script>
    <!-- START NAVBAR -->
    <nav class="navbar navbar-expand-lg shadow-sm">
      <div class="container-fluid container">
        <a class="navbar-brand" href="#">
          <img src="img/logo.png" alt="" width="auto" height="24" class="d-inline-block align-text-top">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav ms-auto nav-custom">
            <a class="nav-link" aria-current="page" href="index.php">Home</a>
            <a class="nav-link" href="about.html">About</a>
            <a class="nav-link nav-active" href="article.php">Article</a>
            <a class="nav-link" href="#">Program</a>
          </div>
        </div>
      </div>
    </nav>
    <!-- END NAVBAR-->

    <!-- START BODY -->
    <div class="container">
      <div class="head-title pd-5 my-5">
        <h1><?= $data_artikel["judul"] ?></h1>
      </div>
      <div class="cover-img">
          <img src="img/article/<?= $data_artikel["gambar"] ?>" alt="coverimage" width="100%">
      </div>
      <div class="content my-3 mb-5">
        <div class="author my-4">
          <h3><?= $data_artikel["penulis"] ?></h3>
          <h6><?= $data_artikel["tglUpload"] ?> | <?= $data_artikel["deskripsi"] ?></h6>
        </div>
        <p><?= $data_artikel["isi"] ?></p>
        <div class="container mb-3">
          <h2 align="center" style="margin: 60px 10px 10px 10px;">Komentar Article</h2><hr>
            <form method="POST" id="form_komen">
              <div class="form-group">
                <input type="text" name="nama_pengirim" id="nama_pengirim" class="form-control" placeholder="Masukkan Nama" />
              </div>
          <div class="form-group">
            <textarea name="komen" id="komen" class="form-control" placeholder="Tulis Komentar" rows="5"></textarea>
          </div>
        <div class="form-group">
          <input type="hidden" name="komentar_id" id="komentar_id" value="0" />
          <input type="submit" name="submit" id="submit" class="btn btn-info" value="Submit" />
        </div>
        </form>
      <hr>
     <h4 class="mb-3">Komentar :</h4>
    <span id="message"></span>
   
      <div id="display_comment"></div>
  </div>
      </div>
    </div>
    <!-- END BODY -->


    <!-- START FOOTER -->
    <footer class="pt-5 pb-4 bg-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-4 col-sm-12 footer-content-custom footer-position">
            <img class="logo-footer" src="img/logo-putih.png" alt="lhjateng" width="200px">
          </div >
          <div class="col-lg-7 col-md-5 col-sm-12 footer-content-custom footer-position">
            <div class="col-lg-10">
              <p>
              Rumah bagi para komunitas dan organisasi kemahasiswaan yang ada di Jawa tengah untuk                bisa berjejaring, belajar, dan bertumbuh
              </p>
            </div>
          </div> 
          <div class="col-lg-2 col-md-3 col-sm-12 footer-content-custom footer-position">
            <h6>Contact us:</h6>
            <a href="mailto:...">
              <img class="sosmed" src="img/gmail-logo.png" alt="lh-gmail" width="25px" > 
            </a>
            <a href="https://www.linkedin.com/company/leadershubjawatengah/" target="_blank">
              <img class="sosmed" src="img/linkedin.png" alt="lh-linkedin" width="25px">
            </a>
            <a href="https://www.instagram.com/leadershubjateng/" target="_blank">
              <img class="sosmed" src="img/instagram.png" alt="lh-instagram" width="25px" >
            </a>
          </div>         
        </div>
      </div>
    </footer>
        <!-- END FOOTER -->

    <!-- Start Script Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <!-- End Script Bootstrap -->

  </body>
</html>