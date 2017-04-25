<?php
function gallery($directory = 'images', $display_type = 'slideshow'){

    /* step one:  read directory, make array of images */
    if ($handle = opendir($directory)) {
        while (false !== ($file = readdir($handle))){
            if ($file != '.' && $file != '..'){
                $files[] = $file;
            }
        }
        closedir($handle);
    }
    
    if(count($files)){
        sort($files);
        foreach($files as $file){
            $start = 0;
            $end = strpos($file, '.jpg');
            $caption = substr($file, $start, $end);
            $caption = str_replace('-',' ',$caption);
            $caption = ucfirst(str_replace('_',' ',$caption));
            switch($display_type){
                case 'all-the-way':
                    echo "<img  class='orbit-image' src='$directory/$file'  />";
                    break;
                case 'thumbnails':
                    echo "<a href='$directory/$file'><img  class='orbit-image' src='$directory/$file'   /></a>";
                    break;
                case 'slideshow':
                    echo "<div class='item'><img  src='$directory/$file'  /></div>";
                    break;
                case 'captioned-slideshow':
                    echo "<img class='orbit-image' src='$directory/$file'  />";
                    break;
                case 'list':
                    echo "<li><img class='orbit-image' src='$directory/$file' /></li>";
                    break;
            }
        }
    }else{
        echo '<p>There are no images in this gallery.</p>';
    }

}
?>