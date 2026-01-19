export default {
    init() {
        this.cache()
        this.events()
        return this
    },
    cache() {
        this.settings = {
            contaienr: '.popup',
            btns: '.js-popup',
            closeBtns: '.js-popup-close',
            wrapepr: '.main',
            class: {
                active: 'active',
                blur: 'blur',
            }
        } 
        this.$document = document
        this.$btns = this.$document.querySelectorAll(this.settings.btns)
        this.$closeBtns = this.$document.querySelectorAll(this.settings.closeBtns)
        this.$wrapepr = this.$document.querySelector(this.settings.wrapepr)
        this.$contaienr = this.$document.querySelectorAll(this.settings.contaienr)
    },
    events() {
        
        document.addEventListener('event.popup.open', this.handleModalEventOpen.bind(this));
        // document.addEventListener('event.popup.close', this.handleModalEventClose.bind(this));
        this.$btns.forEach(($btn) => {
            $btn.addEventListener('click', this.handleClick.bind(this))
        })
        this.$closeBtns.forEach(($btn) => {
            $btn.addEventListener('click', this.handleClose.bind(this))
        })

        this.$contaienr.forEach(($container) => {
                $container.addEventListener('click', (e) => {
                if (e.target.classList.contains('popup')) {
                    this.closeAllModal()
                }
            })    
        })
    },
    handleClick(e) {
        const $target = e.target
        const {popup} = $target.dataset; 
        this.openModal(popup);  
    },
    handleClose(e) {
      this.closeAllModal()  
    },
    openModal(modalId) {
        const $modal = this.$document.querySelector(modalId);
        $modal.classList.add(this.settings.class.active);
        this.$wrapepr.classList.add(this.settings.class.blur);
    },
    closeModal(modalId) {
        const $modal = this.$document.querySelector(modalId);
        $modal.classList.remove(this.settings.class.active);
        this.$wrapepr.classList.remove(this.settings.class.blur);
    },
    closeAllModal() {
        const _active = this.settings.contaienr + '.' + this.settings.class.active
        this.$document.querySelectorAll(_active).forEach(($modal) => {
            $modal.classList.remove(this.settings.class.active);
        })
        this.$wrapepr.classList.remove(this.settings.class.blur);
    },
    handleModalEventOpen(event) {
        this.closeAllModal()
        this.openModal(event.detail)
    },
}