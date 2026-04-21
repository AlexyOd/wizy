<?php
if (!function_exists('pll_the_languages')) {
    return;
}

$languages = pll_the_languages(array('raw' => 1));
if (empty($languages)) {
    return;
}

$current_slug = pll_current_language('slug');
$lang_code = '';
if ($current_slug) {
    $code = function_exists('mb_substr') ? mb_substr($current_slug, 0, 2) : substr($current_slug, 0, 2);
    $lang_code = strtoupper($code);
}
?>
<div class="relative">
    <button type="button" class="flex items-center gap-2 px-4 py-2 rounded-lg text-white/70 hover:text-white transition-all border border-white/10 hover:border-white/20">
        <span class="text-sm font-semibold">
            <?php echo $lang_code; ?>
        </span>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
            stroke-linejoin="round" class="lucide lucide-chevron-down w-4 h-4 transition-transform rotate-180">
            <path d="m6 9 6 6 6-6"></path>
        </svg>
    </button>
    <div class="absolute right-0 top-full mt-2 w-40 bg-[#111111] border border-white/10 rounded-xl overflow-hidden shadow-xl z-50">
        <button type="button"class="w-full px-4 py-3 text-left text-sm transition-all bg-[#FFB100]/10 text-[#FFB100]">Русский</button>
        <button type="button" class="w-full px-4 py-3 text-left text-sm transition-all text-white/70 hover:bg-white/5 hover:text-white">English</button>
        <button type="button" class="w-full px-4 py-3 text-left text-sm transition-all text-white/70 hover:bg-white/5 hover:text-white">Polski</button>
    </div>
</div>