<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<title>
    Add User
</title>
<form action="/user/save" method="POST" class="pt-2 pb-2">
    @csrf
<section class="vh-100" style="background-color:#B9E6FF;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Masukkan Nik, Nama, No Handphone, dan Password</p>
              <div class="form-outline form-white mb-4">
                <input name="nik_user" type="text" id="nik" class="form-control form-control-lg" required />
                <label class="form-label" for="nik">Nik</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input name="nama_user" type="text" id="name" class="form-control form-control-lg" required/>
                <label class="form-label" for="name">Name</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input name="no_hp" type="no_hp" id="no_hp" class="form-control form-control-lg" required/>
                <label class="form-label" for="no_hp">No Handphone</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input name="password" type="password" id="password" class="form-control form-control-lg" required/>
                <label class="form-label" for="password">Password</label>
              </div>

              <button class="btn btn-outline-light btn-lg px-5" value="save" type="submit">Submit</button>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</form>