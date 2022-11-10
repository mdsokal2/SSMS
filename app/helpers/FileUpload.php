<?php

function saveImage($image,$directory,$existImage=null){
if ($image){
    if (isset($modelImagePath)){
        if (file_exists($existImage)){
            unlink($existImage);
        }
    }
    $imagename=rand(10,1000).$image->getClientoriginalName();
    $image->move($directory,$imagename);
    $imageUrl=$directory.$imagename;
}
else{
    $imageUrl=$existImage;
}
return $imageUrl;
};
