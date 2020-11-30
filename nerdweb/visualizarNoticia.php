<?php
require_once __DIR__ . "/Nerdweb/Database.php";
$configDB = [
    "host" => "localhost",
    "name" => "nerdweb",
    "user" => "root",
    "pass" => ""
];
$database = new \Nerdweb\Database($configDB);
$id = $_GET['id'];
$noticia = $database->customQueryPDO("SELECT titulo, data, conteudo FROM noticia WHERE id = ?", array($id));
include ("views/head.php");
include ("views/header.php");
include ("views/visualizaNoticia.php");
$titulo = $noticia[0]['titulo'] !== null ? $noticia[0]['titulo'] : '';
$data = $noticia[0]['data'] !== null ? $noticia[0]['data'] : '';
$conteudo = $noticia[0]['conteudo'] !== null ? $noticia[0]['conteudo'] : '';
$html = "<div class='card-panel teal lighten-2'><h3 class='header blac-text'>{$titulo}</h3>
<div class='row'>
    <div class='col lg 12'>
        <h6 class=''>Data: {$data}</h6>
    </div>
</div>
</div>
<div class='row'>
    <p class='flow-text'>{$conteudo}</p>
</div>

</div>";
echo $html;
include ("views/footer.php");
