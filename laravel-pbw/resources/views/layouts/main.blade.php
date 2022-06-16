<!doctype html>
<html lang="en">
  <head>
    <title>@yield('title') Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
  </head>
  <body>
      <div class="container-fluid">
          <div class="row">
          <div class="col-lg-12 py-2"style="background-color: #A89B8C;">
                <div class="dropdown float-right">
              <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="bi bi-person-lines-fill"></i>
              </button>
              <div class="dropdown-menu dropdown-menu-right">
                <a style="text-transform: capitalize;" class="dropdown-item" href="" type="button">{{Auth::user()->nama_user ?? ''}}</a>
                <a class="dropdown-item" href="/user" type="button">User Data</a>
                <a class="dropdown-item" href="/logout" type="button">Logout</a>
              </div>
            </div>
              </div>
              @yield('alert')
          </div>

          <div class="row">
              <div class="col-lg-2 vb-100">
              <div class="nav flex-column nav-pills mt-4" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link {{ ($cek === 'home') ? 'active':'' }}" 
                href="/home">Home</a>
                <a class="nav-link {{ ($cek === 'dosen') ? 'active':'' }}"
                href="/dosen">Dosen</a>
                <a class="nav-link {{ ($cek === 'mahasiswa') ? 'active':'' }}"
                href="/mahasiswa">Mahasiswa</a>
                <a class="nav-link {{ ($cek === 'matakuliah') ? 'active':'' }}"
                href="/matakuliah">Matakuliah</a>
                </div>
              </div>
                  <div class="col-lg-10 vb-100" >
                      <div class="card mt-4">
                          @yield('header')
                          </div>

                          <div class="card-body">
                          @yield('content')
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <footer class="text-center text-white fixed-bottom" style="background-color: #A89B8C;">
            <div class="text-center">
            <b>Footer Web</b>
            </div>
        </footer>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>