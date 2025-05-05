<?php
    require_once(__DIR__ ."/../../../model/contactDB.php");
    $listeContacts = getAllcontact()->fetchAll();
?>


<!-- ======= menu haut ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="home" class="logo d-flex align-items-center">
            <img src="public/templates/templateAdmin/assets/img/logoUcab-removebg-preview.png" alt="">
            <span class="d-none d-lg-block">F.S.T UCAB</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->
    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number"><?=count($listeContacts)?></span>
                </a><!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">
                        Vous avez <?=count($listeContacts)?> nouveaux messages
                        <a href="listeContact"><span class="badge rounded-pill bg-primary p-2 ms-2">Voir tout</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="public/templates/templateAdmin/assets/img/logoUcab-removebg-preview.png" alt=""
                                class="rounded-circle">
                            <div>
                                <?php
                                foreach ($listeContacts as $contact)
                                {
                            ?>
                                <h4><?= $contact['nom']?></h4>
                                <p><?= $contact['message']?></p>
                                <p>4 hrs. plus tard</p>
                                <?php
                                }
                            ?>
                            </div>
                        </a>

                    </li>

                    <li class="dropdown-footer">
                        <a href="#">Afficher tous les messages</a>
                    </li>

                </ul>

            </li><!-- End Messages Nav -->

            <li class="nav-item dropdown pe-3">

                <a href="home"><button class="btn btn-success">Deconnexion</button></a>
        </ul>
    </nav><!-- End Icons Navigation -->

</header>



<!-- ======= menu gauche ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link " href="dashBord">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <!-- Users -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="listeUser">
                <i class="bi bi-person"></i>
                <span>Users</span>
            </a>
        </li>

        <!-- Evenements -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="listeEvenment">
                <i class="fa-solid fa-calendar"></i>
                <span>Evenements</span>
            </a>
        </li>

        <!-- Faq -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="listeFaq">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- End F.A.Q Page Nav -->

        <!--Galarie -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="listeGalerie">
                <i class="fa-solid fa-image"></i>
                <span>Galarie</span>
            </a>
        </li>
        <!--Contact -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="listeContact">
                <i class="bi bi-envelope"></i>
                <span>Contact</span>
            </a>
        </li>
    </ul>

</aside>