<?php

//Appelle du fichier db.php
require_once("db.php");



//permat de recuperer la liste user dans la bd
function getAlluser()
{
    $requete = "SELECT * FROM users WHERE etat = 1";
    try {
        return getConnexion()->query($requete); //exécution de la requette
    } catch (PDOException $error) {
        die("Erreur lors de la recuperation de la liste des utilisateur :" . $error->getMessage());
    }
}

//permet de recuperer la liste des users supprimees

function getCorbeilleuser()
{
    $requete = "SELECT * FROM users WHERE etat = 0";
    try {
        return getConnexion()->query($requete); //exécution de la requette
    } catch (Exception $error) {
        die("Erreur lors de la recuperation des users supprimées :" . $error->getMessage());
    }
}

function adduser($nom, $prenom, $adresse, $email, $telephone,  $photo, $role, $password)
{
    try {
        $pdo = new PDO('mysql:host=localhost;dbname=ucab_amical', 'root', '');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $date_Actuelle = date("Y-m-d");
        $etat = 1;
        $requete = $pdo->prepare("INSERT INTO users VALUES(null, :nom,  :prenom, :photo, :email, :telephone, :adresse, :role, :password, :etat, :date_Actuelle, null, null, null, null, null)");
        $requete->bindParam(':etat', $etat);
        $requete->bindParam(':nom', $nom);
        $requete->bindParam(':photo', $photo);
        $requete->bindParam(':prenom', $prenom);
        $requete->bindParam(':adresse', $adresse);
        $requete->bindParam(':email', $email);
        $requete->bindParam(':password', $password);
        $requete->bindParam(':telephone', $telephone);
        $requete->bindParam(':role', $role);
        $requete->bindParam(':date_Actuelle', $date_Actuelle);

        if ($requete->execute()) {
            return 1;
        } else {
            return 0;
        }
    } catch (PDOException $e) {
        echo "Erreur lors de l'ajout de la faq : " . $e->getMessage();
        return 0;
    }

}


//permet de modifier une user dans la BD
function edituser($id_user, $nom, $prenom, $adresse, $email, $telephone,  $photo, $role, $password)
{

    try {
        $pdo = new PDO('mysql:host=localhost;dbname=ucab_amical', 'root', '');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $date_Actuelle = date("Y-m-d");
        $requete = $pdo->prepare("UPDATE users SET nom=:nom, prenom=:prenom,adresse=:adresse,email=:email,
                                        telephone=:telephone, photo=:photo,role=:role, password=:password, 
                                        updated_at=:date_Actuelle, updated_by=1 WHERE id_user=:id_user");
        $requete->bindParam(':nom', $nom);
        $requete->bindParam(':photo', $photo);
        $requete->bindParam(':prenom', $prenom);
        $requete->bindParam(':adresse', $adresse);
        $requete->bindParam(':email', $email);
        $requete->bindParam(':password', $password);
        $requete->bindParam(':telephone', $telephone);
        $requete->bindParam(':role', $role);
        $requete->bindParam(':date_Actuelle', $date_Actuelle);
        $requete->bindParam(':id_user', $id_user);

        if ($requete->execute()) {
            return 1;
        } else {
            return 0;
        }
    } catch (PDOException $e) {
        echo "Erreur lors de l'ajout de la faq : " . $e->getMessage();
        return 0;
    }

}

//permet d'activer une user dans la BD
function activerUser($id_user)
{
    $date_Actuelle = date("Y-m-d");

    $requete = "UPDATE users SET etat=1, updated_at='$date_Actuelle',
    updated_by=1 WHERE id_user='$id_user'";
    try {
        return getConnexion()->exec($requete); //exécution de la requette
    } catch (Exception $error) {
        die("Erreur d'activation de l'utilisateur :" .$error->getMessage());
    }
}

//permet désactiver une user dans la BD
function desactiverUser($id_user)
{
        $date_Actuelle = date("Y-m-d");
    $requete = "UPDATE users SET etat=0, updated_at='$date_Actuelle', updated_by=1 WHERE id_user='$id_user'";
    try {
        return getConnexion()->exec($requete); //exécution de la requette
    } catch (Exception $error) {
        die("Erreur desactiver de l'utilisateur :" .$error->getMessage());
    } 
}

//permet recuperer un utilisateur dans la BD
function getByIduser($id_user)
{
    $requete = "SELECT * FROM users WHERE id_user='$id_user' LIMIT 1";
    try {
        return getConnexion()->query($requete); //exécution de la requette
    } catch (Exception $error) {
        die("Erreur de recuperation de l'utilisateur via son id:" .$error->getMessage());
    }
}

?>