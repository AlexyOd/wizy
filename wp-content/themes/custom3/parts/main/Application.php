
<section id="application" class="py-20 bg-gray-50">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-12">
        <h2 class="text-3xl lg:text-4xl font-bold mb-4 text-gray-900">Оставить заявку</h2>
        <p class="text-xl text-gray-600">Заполните форму и мы свяжемся с вами в течение дня</p>
    </div>
    <div class="max-w-lg mx-auto bg-white rounded-lg border shadow-sm">
        <div class="p-6 border-b">
            <h3 class="text-lg font-semibold">Заявка на сотрудничество</h3>
            <p class="text-sm text-gray-600 mt-1">Укажите ваши контактные данные для связи</p>
        </div>
        <div class="p-6">
            <form id="applicationForm" class="space-y-6">
                <div class="space-y-2">
                    <label for="name" class="flex items-center gap-2 text-sm font-medium text-gray-700">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z">
                                
                            </path>
                        </svg> 
                        Имя
                    </label>
                    <input id="name" name="name" type="text" placeholder="Введите ваше имя" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-transparent" required>
                    
                </div>
                <div class="space-y-2">
                    <label for="phone" class="flex items-center gap-2 text-sm font-medium text-gray-700">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z">
                                
                            </path>
                        </svg> Номер телефона 
                    </label>
                    <input id="phone" data-validate="phone" name="phone" type="tel" placeholder="+48 123 456 789" class="iti__phone w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-transparent" required>
                </div>
                <div class="space-y-2">
                    <label for="city" class="flex items-center gap-2 text-sm font-medium text-gray-700">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z">
                                
                            </path>
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z">
                                
                            </path>
                        </svg> 
                        Город
                    </label>
                    <div class="form-select">
                        <select id="city" name="city" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-transparent" required>
                            <option value="">Выберите ваш город</option>
                            <option value="Warszawa">Warszawa</options>
                            <option value="Gdańsk">Gdańsk</options>
                            <option value="Toruń">Toruń</options>
                            <option value="Łódź">Łódź</options>
                            <option value="Wrocław">Wrocław</options>
                            <option value="Poznań">Poznań</options>
                            <option value="Lublin">Lublin</options>
                            <option value="Kraków">Kraków</options>
                            <option value="Katowice">Katowice</options>
                            <option value="Bydgoszcz">Bydgoszcz</options>
                            <option value="Płock">Płock</options>
                        </select>
                    </div>
                </div>
                <button type="submit" class="w-full bg-orange-500 hover:bg-orange-600 text-white font-medium py-2 px-4 rounded-md transition-colors"> Отправить заявку </button>
            </form>
        </div>
    </div>
</div>
</section>