import intlTelInput from 'intl-tel-input';

export default class iti {
    constructor($el,options) {
        this.$el = $el
        this.cache(options)
        this.addInputFilter();
    }
    cache(options) {
        this.settings = {
            ...this.defaults,
            ...options
        }
        this.iti = this.initItinewiti(this.$el)
    } 
    initItinewiti($el) {
        return intlTelInput($el, {
            separateDialCode: false,
            // utilsScript: 'intl-tel-input/build/js/utils',
            utilsScript: './utils.js', // Укажите правильный путь к utils.js
            initialCountry: 'auto',  // Автоматическое определение страны
            strictMode: true,
        });
    }

    addInputFilter() {
        // this.$el.addEventListener('input', () => {
        //     console.log
        // });
    }

    get valiadate() {
        return this.iti.isValidNumber();
    }

    get defaults() {
        return {
            phoneClass: 'iti__phone',
        }
    }
}