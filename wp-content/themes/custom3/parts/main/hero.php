<?php
    $title = get_field('hTitle');
    $subtitle = get_field('hSubtitle');
    $buttons = get_field('hButtons');
    $application = get_field('hApplication');
    $conditions = get_field('hConditions');
    $img = get_field('himg');
?>
<!-- Hero Section -->
<section class="bg-gradient-to-br from-gray-50 to-gray-100 py-20">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
            <div>
                <h1 class="text-4xl lg:text-5xl font-bold mb-6 text-gray-900">
                    <?php echo $title ?>
                </h1>
                <p class="text-xl text-gray-700 mb-8">
                    <?php echo $subtitle ?>
                </p>
                <div class="flex flex-col sm:flex-row gap-4">
                    <?php if($application) : ?>
                        <a href="<?php echo $application['url'];?>" class="bg-orange-500 text-white px-8 py-3 rounded-lg hover:bg-orange-600 transition-colors text-center font-medium"> 
                            <?php echo $application['title']; ?>
                        </a>
                    <?php endif; ?>
                    <?php if($conditions) : ?>
                        <a href="<?php echo $conditions['url'];?>"  class="border-2 border-orange-500 text-orange-500 px-8 py-3 rounded-lg hover:bg-orange-50 transition-colors text-center font-medium">
                            <?php echo $conditions['title']; ?>
                        </a>                        
                    <?php endif; ?>
                </div>
            </div>
            <div class="flex justify-center">
                <?php if($img) : ?>
                    <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" class="w-full max-w-lg rounded-lg shadow-2xl">
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>