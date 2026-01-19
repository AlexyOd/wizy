// import wldecor from './wldecor.js'
// import cform from './cForm.js'
// import popup from './popup.js'
// import slider from './slider.js'
// import accordeon from './jsacc.js'
import mobileHeader from './mobileHeader.js'


document.addEventListener('DOMContentLoaded', function() {
    //console.log('------------------------------------------------------');
    // AOS.init();
    //console.log('AOS init');
    //popup.init()
    //console.log('popup init');
    const mburger = mobileHeader.init({
        btn: '.menu-main__brgr',
        menu: '.menu-main__menu',
        header: null,
        classes: {
            active: 'active',
            show: 'active'
        }
    })
    console.log('mburger init', mburger);
    // const decor = new wldecor('.work__items',{
    //     start:'.work__item--1 .work__item--digit',
    //     end: '.work__item--3 .work__item--digit',
    //     decorLine: '.work__decor--line',
    // })
    // //console.log('decor init');
    // const contactForm = document.querySelector('.form__inner form')
    // const form = new cform(contactForm, {
    //     inputHolder: '.form__input',
    // })
    // //console.log('form init');
    // const acc = new accordeon('.acc')
    // //console.log('acc init');
    // const revslider= new slider('.rev__swiper', {
    //     swiperOptions: {
    //         autoHeight: true,
    //         slidesPerView: 1,
    //         pagination: {
    //             el: '.rev__swiper--pagination',
    //             clickable: true,
    //             bulletActiveClass: 'rev__swiper--bullet-active',
    //             bulletClass: 'rev__swiper--bullet',
    //         },
    //         breakpoints: {
    //             782: {
    //                 slidesPerView: 2,
    //             },
    //         }
    //       }       
    // })
    // //console.log('revslider init');
    // const partners= new slider('.partners__swiper', {
    //     swiperOptions: {
    //         slidesPerView: "auto",
    //         pagination: false,
    //         centeredSlides: true,
    //         loop: true,
    //         autoplay: {
    //             delay: 2500
    //         },
    //         breakpoints: {
    //             400: {
    //                 slidesPerView: 2,
    //             },
    //             782: {
    //                 slidesPerView: 4,
    //             },
    //             992: {
    //                 slidesPerView: 6,
    //             },
    //         }
    //     }       
    // })

    // //console.log('partners init');

    // document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    //     anchor.addEventListener('click', function (e) {
    //         e.preventDefault();
    
    //         document.querySelector(this.getAttribute('href')).scrollIntoView({
    //             behavior: 'smooth'
    //         });
    //     });
    // });
    //console.log('------------------------------------------------------');
})