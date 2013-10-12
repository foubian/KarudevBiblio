<?php

Class Db{

    private $config = array(
        'driver' => 'pdo_oci',
        'database' => 'dev',
        'username' => 'dev',
        'password' => 'dev',
        'host' => 'localhost',
        'port' => 1521,
        'service_name' => 'xe'
    );

  
    protected function getConnection() {
       $lien_base = "oci:dbname=(DESCRIPTION =
                (ADDRESS_LIST =
                        (ADDRESS =
                                (PROTOCOL = TCP)
                                (Host = " . $this->config['host'] . ")
                                (Port = " . $this->config['port'] . "))
                )
                (CONNECT_DATA =
                        (SERVICE_NAME = " . $this->config['service_name'] . ")
                )
                )";

        try {
            // connexion à la base Oracle et création de l'objet
            return new \PDO($lien_base, $this->config['username'], $this->config['password']);
        } catch (PDOException $erreur) {
            echo $erreur->getMessage();
        }
    } 

}


?>
