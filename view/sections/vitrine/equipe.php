
<style>
  
    # Team
--------------------------------------------------------------*/
.container {
  margin-right: 4%;
}
.team {
  background: #fff;
  padding: 60px 0;
}
.team .member {
  text-align: center;
  margin-bottom: 20px;
  background: #343a40;
  position: relative;
  overflow: hidden;
  margin-left: 5%;
  /* Coins arrondis pour une forme de ballon */
  /* border-radius: 50% 50% 50% 50% / 60% 60% 40% 40%; */
  /* border-radius: 10px 0px 0px 40px; */

}
.team .member .member-info {
  opacity: 0;
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
  transition: 0.2s;
}
.team .member .member-info-content {
  position: absolute;
  left: 50px;
  right: 0;
  bottom: 0;
  transition: bottom 0.4s;
}
.team .member .member-info-content h4 {
  font-weight: 700;
  margin-bottom: 2px;
  font-size: 18px;
  color: #fff;
}
.team .member .member-info-content span {
  font-style: italic;
  display: block;
  font-size: 13px;
  color: #fff;
}
.team .member .social {
  position: absolute;
  left: -50px;
  top: 0;
  bottom: 0;
  width: 50px;
  transition: left ease-in-out 0.3s;
  background: rgba(78, 64, 57, 0.6);
  text-align: center;
}
.team .member .social a {
  transition: color 0.3s;
  display: block;
  color: #fff;
  margin-top: 75px;
}
.team .member .social a:hover {
  color: #3B186E;
}
.team .member .social i {
  font-size: 18px;
  margin: 0 2px;
}
.team .member:hover .member-info {
  background: linear-gradient(0deg, rgba(78, 64, 57, 0.95) 0%, rgba(78, 64, 57, 0.95) 15%, rgba(255, 255, 255, 0) 100%);
  opacity: 1;
  transition: 0.4s;
}
.team .member:hover .member-info-content {
  bottom: 30px;
  transition: bottom 0.4s;
}
.team .member:hover .social {
  left: 0;
  transition: left ease-in-out 0.3s;
}
h2{
  color:  #157347
}

</style>


<section id="equipe" class="team">
  <div class="container">

    <div class="section-title" data-aos="fade-up">
      <h2 style="color:  #157347;">Equipes</h2>
      <!-- <p>Our team is always here to help</p> -->
    </div>

    <div class="row">

      <div class="col-xl-2 col-md-6" data-aos="zoom-in" data-aos-delay="100">
        <div class="member" >
          <img src="public/images/SéckM.jpeg" class="img-fluid" alt="">
          <div class="member-info">
            <div class="member-info-content">
              <h4 style="font-size: 10px;">MOURTADA SECK</h4>
              <span>Etudiant en lissence3 / UCAB</span>
            </div>
            <div class="social">
              
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>

      <div class="col-xl-2 col-md-6" data-aos="zoom-in" data-aos-delay="200">
        <div class="member">
          <img src="public/images/Habib.jpeg" class="img-fluid" alt="">
          <div class="member-info">
            <div class="member-info-content">
              <h4 style="font-size: 10px;">ABIB CISE</h4>
              <span>Etudiant en lissence3 / UCAB</span>
            </div>
            <div class="social">
              
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>

      <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="300">
        <div class="member">
          <img src="public/images/Dione99.png" class="img-fluid" alt="" style="height: 280px;  width: 300px;">
          <div class="member-info">
            <div class="member-info-content">
              <h4>IBRA DIONE</h4>
              <span>Etudiant en lissence3 / UCAB</span>
            </div>
            <div class="social">
              
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>

      <div class="col-xl-2 col-md-6" data-aos="zoom-in" data-aos-delay="400">
        <div class="member">
          <img src="public/images/diaw.jpeg" class="img-fluid" alt="">
          <div class="member-info">
            <div class="member-info-content">
              <h4 style="font-size: 10px;">MOUSTAPHA DIAW</h4>
              <span>Etudiant en lissence3 / UCAB</span>
            </div>
            <div class="social">
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
             </div>
          </div>
        </div>
      </div>
      <div class="col-xl-2 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="400" >
        <div class="member" >
          <img src="public/images/NMagete.jpeg" class="img-fluid" alt="">
          <div class="member-info">
            <div class="member-info-content">
              <h4 style="font-size: 10px;">NDAYE MAGUETE NDIAYE</h4>
              <span>Etudiant en lissence3 / UCAB</span>
            </div>
            <div class="social">
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>

    
    
    </div>
  </div>
 
</section><!-- End Team Section -->
