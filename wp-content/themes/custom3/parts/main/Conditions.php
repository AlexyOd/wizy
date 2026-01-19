<?php
    $cTitle = get_field('ctitle');
    $cDescr = get_field('cDescr');
    $lSide = get_field('lSide');
    $rSide = get_field('rSide');
?>
<!-- Conditions Section -->
<section id="conditions" class="py-20 bg-gradient-to-br from-orange-50 to-yellow-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
            <h2 class="text-3xl lg:text-4xl font-bold mb-4 text-gray-900">
                <?php echo $cTitle; ?>
            </h2>
            <p class="text-xl text-gray-600">
                <?php echo $cDescr; ?>
            </p>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
            <div class="bg-white rounded-2xl p-8 shadow-xl">
                <div class="grid grid-cols-2 gap-6">
                    <?php
                        $itemClass = ['bg-green-50', 'bg-blue-50', 'bg-purple-50'];
                        $textClass = ['text-green-600', 'text-blue-600', 'text-purple-600'];
                        $count = count($lSide);

                        foreach ($lSide as  $index => $item) {
                            $icon = $item['Svg'];
                            $title = $item['title'];
                            $descr = $item['descr'];
                            $colSpan = ($index === $count - 1 && $count % 2 !== 0) ? 'col-span-2' : '';
                            
                    ?>
                        <div class="text-center p-6 <?php echo $itemClass[$index % count($itemClass)]; ?> rounded-xl <?php echo $colSpan; ?>">
               
                            <?php
                                echo $icon;
                            ?>
                            <div class="text-2xl font-bold <?php echo $textClass[$index]; ?> mb-1">
                                <?php echo $title; ?>
                            </div>
                            <div class="text-sm text-gray-600">
                                <?php echo $descr; ?>
                            </div>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
            <div class="space-y-6">
                <?php
                    foreach ($rSide as $item) {
                        $icon = $item['svg'];
                        $title = $item['title'];
                        $descr = $item['descr'];
                ?>
                    <div class="flex items-start space-x-4">
                        <div class="flex-shrink-0">
                            <?php echo $icon; ?>
                        </div>
                        <div>
                            <h3 class="text-xl font-semibold mb-2 text-gray-900">
                                <?php echo $title; ?>
                            </h3>
                            <p class="text-gray-600">
                                <?php echo $descr; ?>
                            </p>
                        </div>
                    </div>
                <?php
                    }
                ?>
            </div>
        </div>
    </div>
</section>