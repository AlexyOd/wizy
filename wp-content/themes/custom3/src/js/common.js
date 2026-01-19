import cform from './cForm.js'
document.addEventListener('DOMContentLoaded', function() {
    const triggers = document.querySelectorAll('.accordion-trigger'); 
    triggers.forEach(trigger => { 
        trigger.addEventListener('click', function() {
            const targetId = this.dataset.target;
            const content = document.getElementById(targetId);
            const chevron = this.querySelector('.chevron'); 
            // Close all other accordions
            triggers.forEach(otherTrigger => {
                if (otherTrigger !== this) {
                    const otherId = otherTrigger.dataset.target;
                    const otherContent = document.getElementById(otherId);
                    const otherChevron = otherTrigger.querySelector('.chevron');
                    otherContent.classList.remove('active');
                    otherTrigger.classList.remove('active'); 
                }
            });
            // Toggle current accordion
            content.classList.toggle('active'); 
            this.classList.toggle('active');
        }); 
    }); 

    const contactForm = document.querySelector('#applicationForm')
    const form = new cform(contactForm, {
        inputHolder: '#applicationForm .space-y-2',
        function: {
                success:showSuccess,
                error: showError
            },
    })
    // Toast notification
    function showToast(message, type = 'success') {
        const toast = document.getElementById('toast'); 
        const toastMessage = document.getElementById('toast-message');
        toastMessage.textContent = message; 
        if (type === 'error') {
            toast.className = 'fixed top-4 right-4 bg-red-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-0 transition-transform duration-300 z-50'; 
        } else { 
            toast.className = 'fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-0 transition-transform duration-300 z-50'; 
        } 
        setTimeout(() => {
            toast.className = 'fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-full transition-transform duration-300 z-50'; 
            toastMessage.textContent = ''; 
        }, 3000); 
    }
    // Smooth scrolling for navigation links 
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href')); 
            if (target) { 
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });
    function showSuccess() {
        showToast('Заявка отправлена! Мы свяжемся с вами в ближайшее время.', 'success');
    }
    function showError(error) {
        const message = error.message || error || 'Произошла ошибка';
        showToast(message, 'error'); 
    }
})