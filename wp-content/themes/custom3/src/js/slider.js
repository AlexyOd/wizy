import Swiper from 'swiper';
import { Navigation, Pagination, Controller, Grid, Autoplay } from 'swiper/modules';

export default class Slider{
    constructor(selector, options) {
        this.domElement = document.querySelector(selector)
        if (!this.domElement) return
        this.cache(options)
    }

    init() {
        this.cache();
    }
    cache(options) {
        this.settings = {
            ...this.defaults,
            ...options
        }
        const swOptions = options? {
            ...this.swiperOptions,
            ...options.swiperOptions
        } : this.swiperOptions
        this.settings.swiperOptions = swOptions
        if(!this.settings.swiperOptions.grid) {
            this.$slider = new Swiper(this.domElement, this.settings.swiperOptions);
        } else {
            this.reInit();
        }

    }
    get defaults() {
        return {
            navCont: '',
         
        }
    } 
    get swiperOptions() {
        const _this = this
        return {
            modules: [Navigation, Pagination, Controller, Grid, Autoplay],
            slidesPerView: 3,
            navigation: {
               // prevEl: '.rev__swiper.swiper-button-prev',
               // nextEl: '.rev__swiper.swiper-button-next',
            },
            on: {
                breakpoint: function (swiper) {
                    if (_this.settings.swiperOptions.grid && _this.startWatchBreackpoints) {
                        _this.reInit();
                    }
                }
            }
        }
    }
    reInit() {
        this.startWatchBreackpoints = false;
        if(this.$slider) this.$slider.destroy();
        this.$slider = new Swiper(this.domElement, this.settings.swiperOptions);
        this.startWatchBreackpoints = true;
    }

}