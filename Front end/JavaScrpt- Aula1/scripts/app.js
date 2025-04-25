    const btn = document.querySelector('.bi');
    const body = document.querySelector('body')

    
    btn.addEventListener('click',function() { //função dentro do método
        body.classList.toggle('dark');
        btn.classList.toggle('bi-sun')
        btn.classList.toggle('bi-moon')

    });

