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

        this.$start = this.domElement.querySelector(this.settings.start)
        this.$end = this.domElement.querySelector(this.settings.end)
        this.$decorLine = this.domElement.querySelector(this.settings.decorLine)
    }
                
    get defaults() {
        return {
            start: null,
            end: null,
            decorLine: null,
        }
    }
                
    init() {
        setTimeout(() => {
            this.events()
            setTimeout(() => {
                this.checkToDraw()
            }, 300);
        }, 1);
        
    }
    events() {
        const _this = this
        window.addEventListener('resize', () => {
            this.checkToDraw()
        })
        window.addEventListener('scroll', () => {
            this.checkToDraw()
        })
    }

    checkToDraw() {
        const isIos = !!this.domElement.querySelector('.aos-animate')
        if(isIos)  { 
            this.drawLine()
        }    
    }

    drawLine() {
        if (!this.$start || !this.$end || !this.$decorLine) return;
        const startRect = this.$start.getBoundingClientRect();
        const endRect = this.$end.getBoundingClientRect();
        const parentRect = this.domElement.getBoundingClientRect();
        const coord = {
            left: (startRect.left - parentRect.left) + (startRect.width / 2),
            width: (endRect.left - parentRect.left)- (startRect.left - parentRect.left),
            top: startRect.height/2
        }
        this.$decorLine.style.position = 'absolute';
        this.$decorLine.style.left = `${coord.left}px`;
        this.$decorLine.style.width = `${coord.width}px`;
        this.$decorLine.style.top = `${coord.top}px`;
    }
}