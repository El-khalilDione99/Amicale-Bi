  <!-- ======= Section Entete ======= -->
  <?php require_once("../../../sections/admin/entete.php")?>

  <!-- ======= Menu Haut ======= -->
  <?php require_once("../../../sections/admin/menuGaucheHaut.php")?>

  <?php
    require_once("../../../../model/userDB.php");
    $listeUsers = getAlluser()->fetchAll();
  ?>

  <main id="main" class="main">
      <div class="pagetitle">
          <h1>Liste des utilisateurs</h1>
          <nav>
              <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="addUser">Ajout</a></li>
                  <li class="breadcrumb-item"><a href="corbeilleUser">Corbeille</a></li>
              </ol>
          </nav>
      </div><!-- End Page Title -->

      <section class="section">
          <div class="row">
              <div class="col-lg-12">

                  <div class="card">
                      <div class="card-header">
                          <a class="btn btn-primary float-end" href="addUser"><i class="fa fa-plus-square-o"></i></a>

                      </div>
                      <div class="card-body">
                          <h5 class="card-title"># Utilisateur</h5>
                          <div class="table-responsive">
                              <!-- Table with stripped rows -->
                              <table class="table datatable table-striped">
                                  <thead>
                                  <tr>
                                      <th scope="col">Photo</th>
                                      <th scope="col">Nom</th>
                                      <th scope="col">prenom</th>
                                      <th scope="col">Adresse</th>
                                      <th scope="col">Email</th>
                                      <th scope="col">Telephone</th>
                                      <th scope="col">Role</th>
                                      <th scope="col">Creer le</th>
                                      <th scope="col">Action</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <?php
                                  foreach ($listeUsers as $users)
                                  {
                                      ?>
                                      <tr>
                                          <th scope="row">
                                              <img width="35px" style="border-radius:50%"
                                                   src="public/images/<?= $users['photo']?>" alt="">
                                          </th>
                                          <td><?= $users['nom']?></td>
                                          <td><?= $users['prenom']?></td>
                                          <td><?= $users['adresse']?></td>
                                          <td><?= $users['email']?></td>
                                          <td><?= $users['telephone']?></td>
                                          <td><?= $users['role']?></td>
                                          <td><?= $users['created_at']?></td>

                                          <td>
                                              <div class="btn-group-sm">
                                                  <a onclick="return confirm('Voulez vous bien supprimer')"
                                                     href="userController?suppression=1&idUser=<?=$users['id_user']?>"
                                                     class="btn btn-danger fw-bold"> <i class="fa fa-trash"></i></a>
                                                  <a href="userController?edition=1&idUser=<?= $users['id_user']?>"
                                                     class="btn btn-warning fw-bold"><i class="fa fa-edit"></i></a>
                                              </div>
                                          </td>
                                      </tr>
                                      <?php
                                  }
                                  ?>
                                  </tbody>
                              </table>
                              <!-- End Table with stripped rows -->
                          </div>

                      </div>
                  </div>

              </div>
          </div>
      </section>
  </main>

  <!-- ======= Footer ======= -->
  <?php require_once("../../../sections/admin/footer.php")?>

  <!-- ======= Script ======= -->
  <?php require_once("../../../sections/admin/script.php")?>