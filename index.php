<?php
require_once './autoload.php';
require_once './views/includes/header.php';
require_once './views/includes/navbar.php';

$home = new HomeController();

$pages = ['home','cart','dashboard','updateProduct','deleteProduct',
        'addProduct','emptycart','show','cancelcart','register','login','checkout',
        'logout','products','orders','addOrder'
    ];

if(isset($_GET['page'])){
    if(in_array($_GET['page'],$pages)){
        $page = $_GET['page'];
        if($page === "dashboard" || $page === "deleteProduct"
            || $page === "addProduct"  || $page === "updateProduct" || $page === "products" ||
            $page === "orders"){
                if(isset($_SESSION['admin']) && $_SESSION['admin'] == true){
                    $admin = new AdminController();
                    $admin->index($page);
                }else{
                    include('views/includes/404.php');
                }
        }else{
            $home->index($page);
        }
    }else{
        include('views/includes/404.php');
    }
}else{
    $home->index("home");
}
    
require_once("./views/includes/footer.php");