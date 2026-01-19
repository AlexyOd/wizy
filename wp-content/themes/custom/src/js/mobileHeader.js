export default {
    init(options) {
        this.cache(options)
        this.events()
    },
    cache(options) {
        const classes = {
            ...this.defaults.classes,
            ...options.classes
        }
        this.settings = {
            ...this.defaults,
            ...options
        }
        this.settings.classes = classes
        
        this.$btn = document.querySelector(this.settings.btn)
        this.$closeBtn = document.querySelector(this.settings.closeBtn)
        this.$main = document.querySelector(this.settings.main)
        this.$menu = document.querySelector(this.settings.menu)
        return this
        
    },
    events() {
        this.$btn.addEventListener('click', this.handleClick.bind(this))
        window.addEventListener('resize', this.handleResize.bind(this))
        this.$closeBtn.addEventListener('click', this.handleClick.bind(this))
    },
    handleClick() {
        const {active,blure,show} = this.settings.classes
        this.$btn.classList.toggle(active)
        this.$main.classList.toggle(blure)
        this.$menu.classList.toggle(show)
        this.handleResize()
    },

    get headerHEight () {
        if(!this.settings.header) return false
        return document.querySelector(this.settings.header).offsetHeight
    },
    get defaults () {
        return {
            btn: '.header_mobile-btn',
            active: 'is-active',
            main: 'main',
            minwidth: '1200',
            menu: '.header__wrapper',
            header: 'header',
            closeBtn: '.menu-main__close',
            classes: {
                active: 'is-active',
                blure: 'blur',
                show: 'show'
            }
        }
    },

    handleResize() {
        const headerHEight = this.headerHEight
        if(headerHEight)
        this.$menu.style.top = headerHEight + 'px'
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