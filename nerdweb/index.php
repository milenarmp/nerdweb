<?php
require_once __DIR__ . "/Nerdweb/Database.php";
$configDB = [
    "host" => "localhost",
    "name" => "nerdweb",
    "user" => "root",
    "pass" => ""
];
$database = new \Nerdweb\Database($configDB);

ultimasNoticias($database);

function ultimasNoticias($database){
    //definindo período de 5 dias para buscar as notícias mais recentes
    // $dataFinal = new DateTime();
    // $dataFinal = date_format($dataFinal,"Y/m/d");
    // $dataInicial = new DateTime();
    // $dataInicial->sub(new DateInterval('P5D'));
    // $dataInicial = date_format($dataInicial,"Y/m/d");
    // $ultimasNoticias = $database->customQueryPDO("SELECT id, titulo, data, url_noticia FROM noticia WHERE data BETWEEN ? AND ?", array ($dataInicial, $dataFinal));
    $ultimasNoticias = $database->customQueryPDO("SELECT id, titulo, data, url_noticia FROM noticia", array());
    include ("views/head.php");
    include ("views/header.php");
    include ("views/inicial.html");
    //formatando tabela em uma string para utilizar com echo 
    $html = "<table class='striped'>
                <thead>
                    <tr>
                        <th>Link</th>
                        <th>Id</th>
                        <th>Título</th>
                        <th>Data</th>
                    </tr>
                </thead>
                <tbody>";
    foreach($ultimasNoticias as $noticia){
        $titulo = $noticia['titulo'] !== null ? $noticia['titulo'] : '';
        $url_noticia = $noticia['url_noticia'] !== null ? $noticia['url_noticia'] : '';
        $data = $noticia['data'] !== null ? $noticia['data'] : '';
        $id = $noticia['id'] !== null ? $noticia['id'] : '';
        $html .= "<tr>
                <th><a href='{$url_noticia}'>Abrir notícia</a>'</th>
                <th>{$id}</th>
                <th>{$titulo}</th>
                <th>{$data}</th>
            </tr>";
    }
    $html .= "</tbody>
            </table>
        </div>
    </div>
</div>";
    echo $html;
    include ("views/footer.php");
}
