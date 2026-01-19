
<?php
    $title = get_field('fTitle');
    $subtitle = get_field('fSubtitle');
    $fItems = get_field('fItems');
?>

<!-- FAQ Section -->
 <?php if(!empty($fItems)) : ?>
    
<section id="faq" class="py-20 bg-white">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
            <h2 class="text-3xl lg:text-4xl font-bold mb-4 text-gray-900"><?php echo $title; ?></h2>
            <p class="text-xl text-gray-600"><?php echo $subtitle; ?></p>
        </div>
        <div class="space-y-4">
        <?php
            foreach ($fItems as $index => $item) {
                $question = $item['question'];
                $answer = $item['answer'];
                $id= 'faq-' . $index;
        ?>
            <div class="accordion-item">
                <button class="accordion-trigger" data-target="<?php echo $id; ?>">
                    <span><?php echo $question; ?></span>
                    <svg class="chevron w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7">
                        </path>
                    </svg>
                </button>
                <div id="<?php echo $id; ?>" class="accordion-content">
                    <p><?php echo $answer; ?></p>
                </div>
            </div>
        <?php
            }
        ?>
</section>

<?php endif; ?>