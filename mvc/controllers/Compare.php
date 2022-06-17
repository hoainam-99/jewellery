<?php

class Compare extends Controller{
    function compare(){
        $user = '';
        $url = $this->getUrl();

        if($this->checkUserLogin()){
            $user = $_SESSION['currentUser'];
        }

        //get header's information
        $category = $this->getCategory();
        $brand = $this->getBrand();
        $material = $this->getMaterial();
        $data = [];
        if(isset ($_SESSION['compare'])){
            $data = $_SESSION['compare'];
        }
        // $data = $_SESSION['compare'];

        $this->view('user', [
            'component'=>'compare',
            'title'=>'Compare',
            'url'=>$url,
            'user'=>$user,
            'brand'=>$brand,
            'category'=>$category,
            'material'=>$material,
            'compare'=>$data
        ]);
    }

    function addCompare($id){
        $url = $this->getUrl();
        $data = [];
        $productModel = $this->model('ProductModel');
        $product_gemstoneModel = $this->model('Product_gemstoneModel');

        $product = $productModel->showProductDetail($id);
        $productGemstone = $product_gemstoneModel->showProduct_gemstone($id);

        $product[ "gemstone" ] = $productGemstone;

        if(isset($_SESSION['compare'])){
            $data = $_SESSION['compare'];
        }

        foreach ($data as $item) {
            if($item['id'] == $id){
                header("Location: $url/compare");
                die();
            }
        }

        if(count($data) == 7){
            array_splice($data, 0, 1);
        }
        
        $data[] = $product;
        $_SESSION['compare'] = $data;

        header("Location: $url/compare");
    }

    function deleteCompare(){
        $url = $this->getUrl();
        unset($_SESSION['compare']);

        header("Location: $url/compare");
    }
}