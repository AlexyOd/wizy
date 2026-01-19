export default {
    init() {
        this.cache()
        this.events()
    },
    cache() {
        this.settings = {
            btn: '.header_mobile-btn',
            active: 'is-active',
            main: 'main',
            minwidth: '1200',
            menu: '.header__wrapper',
            header: 'header',
            classes: {
                active: 'is-active',
                blure: 'blur',
                show: 'show'
            }
        }
        
        this.$btn = document.querySelector(this.settings.btn)
        this.$main = document.querySelector(this.settings.main)
        this.$menu = document.querySelector(this.settings.menu)
        return this
        
    },
    events() {
        this.$btn.addEventListener('click', this.handleClick.bind(this))
        window.addEventListener('resize', this.handleResize.bind(this))
    },
    handleClick() {
        const {active,blure,show} = this.settings.classes
        this.$btn.classList.toggle(active)
        this.$main.classList.toggle(blure)
        this.$menu.classList.toggle(show)
        this.handleResize()
    },

    get headerHEight () {
        return document.querySelector(this.settings.header).offsetHeight
    },

    handleResize() {
        
        this.$menu.style.top = this.headerHEight + 'px'
        const windowWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        if(windowWidth > this.settings.minwidth) {
            const {active,blure,show} = this.settings.classes
            this.$btn.classList.remove(active)
            this.$main.classList.remove(blure)
            this.$menu.classList.remove(show)
            this.$menu.style.top = ''
        }
    }
}