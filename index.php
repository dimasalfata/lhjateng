<?php
  require 'function.php';
  $artikel = query("SELECT * FROM artikel ORDER BY tglUpload DESC LIMIT 3");
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

    <!-- Start API Google -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- End API Google -->


    <!-- Start Style -->
    <link rel="stylesheet" href="style.css">
    <!-- End Style -->

    <title>Leadershub Jawa Tengah</title>
    <link rel="icon" href="img/icon.png">

  </head>
  <body>
    <!-- START NAVBAR -->
    <header>
      <nav class="navbar navbar-expand-lg shadow-sm">
        <div class="container-fluid container">
          <a class="navbar-brand" href="#">
            <img src="img/logo.png" alt="" width="auto" height="24" class="d-inline-block align-text-top">
          </a>
          <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto nav-custom">
              <a class="nav-link nav-active" aria-current="page" href="#">Home</a>
              <a class="nav-link" href="about.html">About</a>
              <a class="nav-link" href="article.php">Article</a>
              <a class="nav-link" href="#">Program</a>
            </div>
          </div>
        </div>
      </nav>
    </header>
    <!-- END NAVBAR -->

    <!-- START BODY -->
    <!-- Start Jumbotron -->
    <div class="jumbotron">
      <div class="p-5 mb-4">
        <div class="px-4 py-5 my-5 text-center">
          <div class="container col-lg-10 mx-auto">
            <p class="hero-text">"Platform inisiasi dan kolaborasi antara <span class="hero-text-bold-pid">Pemimpin.id</span> dan <span class="hero-text-bold-impala">Impala Network</span>. Kami mengibaratkan sebagai rumah bagi para komunitas dan organisasi kemahasiswaan yang ada di Jawa Tengah untuk bisa berjenjang, belajar, dan bertumbuh"</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
              <a href="about.html">
                <button type="button" class="btn button">Tentang Kami</button>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Jumbotron -->

    <!-- Start 2nd Section-->
    <div class="container">
      <div class="row my-5">
        <div class="col-lg-6 text-center">
          <img src="img/hero2nd.png" alt="Collaborative" class="img-fluid img-mobile">
        </div>
        <div class="col-lg-6 my-auto">
          <div class="my-3">
            <h2 class="sub-heading sub-heading-left">We also welcome</h2>
            <h1 class="heading heading-left">Collaborative Network</h1>
          </div>
          <p class="bodytext">Merancang program dengan impact lebih besar dan cakupan se-Jawa Tengah. Dengan berkolaborasi, value yang dibawa akan tersebar lebih luas. Jateng Leaders Hub akan menjadi perantara dan juga matchmaker dengan komunitas atau organisasi yang mempunyai tujuan sama.</p>
        </div>
      </div>
    </div>
    <!-- End 2nd Section-->

    <!-- Start 3rd Section -->
    <div class="container">
      <div class="text-center my-5">
        <h2 class="sub-heading ">Read</h2>
        <h1 class="heading">Our Latest Article</h1>
      </div>
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <?php foreach($artikel as $row) : ?>
          <div class="col">
            <a href="article-page.php?id=<?= $row["id_artikel"]?>" style="text-decoration: none;">
            <div class="card card-custom">
              <img src="img/article/<?= $row["gambar"]?>" class="card-img-top card-img-custom">
              <div class="card-body">
                <h5 class="card-title-custom"><?= $row["judul"]?></h5>
                <p class="card-author"><?= $row["tglUpload"]?> | <?= $row["penulis"]?></p>
                <h6 class="card-more">Baca lebih lanjut</h6>
              </div>
            </div>
            </a>
          </div>
        <?php endforeach ?>
      </div>
    </div>
    <!-- End 3rd Section -->

    <!-- Start 4th Section -->
    <div class="container p-5 my-5">
      <div class="text-center">
        <h1 class="heading">Get Our Latest Update</h1>
      </div>
      <div class="col-lg-10 offset-lg-1 my-5">
        <form>
          <div class="d-flex flex-column flex-sm-row w-100 gap-2">
            <label for="newsletter1" class="visually-hidden">Email address</label>
            <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
            <button class="btn btn-form-custom" type="button">Subscribe</button>
          </div>
        </form>
      </div>
    </div>
    <!-- End 4th Section -->
    <!-- END BODY -->

    <!-- Footer -->
    <footer class="pt-5 pb-4 bg-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-4 col-sm-12 footer-content-custom footer-position">
            <img class="logo-footer" src="img/logo-putih.png" alt="lhjateng" width="200px">
          </div>
          <div class="col-lg-7 col-md-5 col-sm-12 footer-content-custom footer-position">
            <div class="col-lg-10">
              <p>
                Rumah bagi para komunitas dan organisasi kemahasiswaan yang ada di Jawa tengah untuk bisa berjejaring, belajar, dan bertumbuh
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
    <!-- End Footer -->
    <!-- Start Script Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <!-- End Script Bootstrap -->

  </body>
</html>