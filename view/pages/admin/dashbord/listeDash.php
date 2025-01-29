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
          <h1>Liste des administrateurs</h1>
      </div><!-- End Page Title -->

      <section class="section">
          <div class="row">
              <div class="col-lg-12">

                  <div class="card">
                      <div class="card-body">
                         
                          <!-- Table with stripped rows -->
                          <table class="table datatable">
                              <thead>
                                  <tr>
                                      <th scope="col">Photo</th>
                                      <th scope="col">Nom</th>
                                      <th scope="col">prenom</th>
                                      <th scope="col">Adresse</th>
                                      <th scope="col">Email</th>
                                      <th scope="col">Telephone</th>
                                      <th scope="col">password</th>
                                      <th scope="col">Role</th>
                                      <th scope="col">Creer le</th>
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
                                      <td><?= $users['password']?></td>
                                      <td><?= $users['role']?></td>
                                      <td><?= $users['created_at']?></td>
                                
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
      </section>
  </main>

  <!-- ======= Footer ======= -->
  <?php require_once("../../../sections/admin/footer.php")?>

  <!-- ======= Script ======= -->
  <?php require_once("../../../sections/admin/script.php")?>