export default class  {
    constructor(selector, options) {
        this.domElement = typeof selector === 'string' ? document.querySelector(selector) : selector
        if (!this.domElement) return
        this.cache(options)
        this.init()
    }
                
    cache(options) {
        this.settings = {
            ...this.defaults,
            ...options
        }

        this.$acc = this.domElement
        this.$accItems = this.domElement.querySelectorAll(this.settings.item)
    }
                
    get defaults() {
        return {
            item: '.js-acc-item',
            btn: '.js-acc-btn',
            cont: '.js-acc-cont',
            wrapper: '.js-acc-wrapper',
            class: {
                active: 'js-acc-active'
            }
        }
    }
                
    init() {
        this.events()
    }
    events() {
        const _this = this
        this.$accItems.forEach(($item) => {
            _this.addEvents($item)
            //$item.addEventListener('click', this.handleClick.bind(this, $item));
        })
    }

    addEvents($item) {
        $item.querySelector(this.settings.btn).addEventListener('click', this.handleClick.bind(this, $item));
    }

    handleClick($item) {
        $item.classList.toggle(this.settings.class.active)
        const isactive = $item.classList.contains(this.settings.class.active)
        if (isactive) {
            $item.querySelector(this.settings.cont).style.maxHeight = $item.querySelector(this.settings.cont).scrollHeight + 'px'
        } else {
            $item.querySelector(this.settings.cont).style.maxHeight = '0px'
        }
    }

}