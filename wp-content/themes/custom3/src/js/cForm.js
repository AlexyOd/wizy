import Iti from './iti.js'

export default class Form{
    constructor(selector, options) {
        this.domElement = typeof selector === 'string' ? document.querySelector(selector) : selector
        if (!this.domElement) return
        this.cache(options)
        this.events()
    }
    cache(options) {
        this.settings = {
            ...this.defaults,
            ...options
        }
        this.$form = this.domElement
        this.$form.querySelectorAll('.iti__phone').forEach(el => {
            const iti = new Iti(el)
            this.settings.itis.push(iti)
            iti.$el.addEventListener('input', this.handlePhoneInput.bind(this))
        })
    }

    handlePhoneInput(event)  {
        const $target = event.target
        let value = $target.value
        if(value.length && value[0] != '+') {
            $target.value = '+' + value
        }
    }

    
    events() {
        this.$form.addEventListener('submit', this.formSubmit.bind(this))
    }

    formSubmit(event) {
        event.preventDefault()
        window.dataLayer = window.dataLayer || [];
        const path = window.location.pathname.split('/')
        const pref = path[path.length-2]
        
        console.log('Form submit triggered, pref =', pref); // проверка, что скрипт сработал

        window.dataLayer.push({
            'event': 'formSubmitted'+pref
        });
        const formData = new FormData(this.$form)
        const data = Object.fromEntries(formData.entries())
        
        console.log('Collected form data:', data); // здесь видим все введённые поля

        if(this.validate(data)) {
            const btn = this.$form.querySelector('[type="submit"]')
            btn.disabled = true
            this.sendForm(formData).then((response) => {
                this.$form.reset()
                this.ShowSuccess()
                window.dataLayer.push({
                    'event': 'formSuccess'+pref
                });
            }).catch((error) => {
                console.log(error)
                this.ShowError(error)
                window.dataLayer.push({
                    'event': 'formError' + pref
                });
            }).finally(() => {
                btn.disabled = false
            })
        } 
    }

    ShowSuccess() {
        if(this.settings.function.success) {
            this.settings.function.success()
            return
        }
        var event = new CustomEvent('event.popup.open', {
            detail: this.settings.popups.success
        });
        document.dispatchEvent(event);
    }

    ShowError(error) {
        if(this.settings.function.error) {
            this.settings.function.error(error)
            return
        }

        var event = new CustomEvent('event.popup.open', {
            detail: this.settings.popups.error
        })
        document.dispatchEvent(event)
    }

    validate(data) {
        this.clearErrors()
        let ret = true
        for (const key in data) {
            if (Object.hasOwnProperty.call(data, key)) {
                const value = data[key];
                const currValidate = this.validateElement(value, key)
                ret = ret && currValidate 
            }
        }
        return ret
    }

    validateElement(value, key) {
        const input = this.$form.querySelector(`[name="${key}"]`)
        let validates = input.dataset.validate 
        let errors = []
        if(!validates || !validates.length) return true
        validates = validates.split(',')

        for (const validate of validates) {
            
            if(validate) {
                switch (validate.trim()) {
                    case 'email':
                        if(!this.isEmail(value)) {
                            errors.push('email')
                        }
                    break
                        
                    case 'phone':
                        if(!this.isPhone(key)) {
                            errors.push('phone')
                        }
                    break

                    case 'link':
                        if(!this.isLink(value)) {
                            errors.push('link')
                        }
                    break
                        
                    case 'req':
                        if(!value) {
                            errors.push('req')
                        }
                    break
                }
            }
        }
        if(errors.length) {
            this.createError(errors, input)
            return false
        }
        return true
    }

    isEmail(email) {
        return /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email)
    }

    isPhone(key) {
        const iti = this.itis.find(iti=>{ return iti.$el.name == key })
        const validate = iti.valiadate
        console.log({validate});
        return validate
    }

    isLink(value) {
        return /^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$/.test(value)        
    }

    createError(errors, input) {
        const parent = input.closest(this.settings.inputHolder)
        parent.classList.add('error')
        const errorElement = parent.querySelector(`.cform__error`) ? parent.querySelector(`.cform__error`) : document.createElement('div')
        errorElement.classList.add('cform__error')
        errors.forEach((error, index) => {
            errorElement.innerText += this.getErrorMessage(error) + (index < errors.length-1 ? ', ' : '')
        })
        parent.append(errorElement)
    }

    getErrorMessage(error) {
        const message = document.querySelector('[data-validate_error="'+error+'"]').innerText.trim()
        return message
    }

    clearErrors() {
        const errors = this.$form.querySelectorAll('.cform__error')
        const parents = this.$form.querySelectorAll('.error')
        for (const parent of parents) {
            parent.classList.remove('error')
        }
        for (const error of errors) {
            error.remove()
        }
    }

    get defaults() {
        return {
            inputHolder: '.cform__item',
            popups: {
                success: '#popup-success',
                error: '#popup-error',
            },
            function: {
                success:null,
                error: null
            },
            itis: [],
        }
    }

    get itis () {
        return this.settings.itis
    }

    sendForm(data) {
        return new Promise((resolve, reject) => {
            const xhr = new XMLHttpRequest();
            xhr.open('POST', '/mail.php', true);
            xhr.send(data);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        resolve(xhr.response);
                    } else {
                        reject(xhr.response);
                    }
                }
            };
        })
    }
}