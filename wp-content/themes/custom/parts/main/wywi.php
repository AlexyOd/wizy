<?php
    
?>
<div class="container">
    <div class="row">
        <div class="col-12">
            <?php
                $wywi_customTitle = get_template_directory() . '/parts/main/customTitle.php';
                $customTitle = $wywi_title;
                if (file_exists($wywi_customTitle)) {
                    include $wywi_customTitle;
                }
            ?>
        </div>
        <div class="col-12">
            <p class="global__subtitle">
                <?php echo $subtitle; ?>
            </p>
        </div>
    </div>
</div>