## Animação por TABS

### Como fazer:
Crie a lógica para que, ao clicar em uma aba, apenas o conteúdo correspondente seja exibido. Isso é feito associando a ordem dos itens de menu à ordem dos conteúdos. Ao clicar, a classe de visibilidade (como `.ativo`) é alternada.

### Elementos HTML utilizados:
- `.tab-menu li`: Itens clicáveis que funcionam como as abas.
- `.tab-content section`: Seções de conteúdo associadas a cada aba.

### Classes CSS fundamentais:
- `.ativo`: Controla qual conteúdo está visível no momento.

### Conceitos utilizados:
- Manipulação de eventos de clique.
- Seleção de elementos com `querySelectorAll`.
- Alternância de classes com `classList`.

### Referências:
- [Origamid - JavaScript Tabs](https://www.origamid.com/slide/javascript-comportamento/#/8/2)
- [MDN - classList](https://developer.mozilla.org/pt-BR/docs/Web/API/Element/classList)
- [W3Schools - Tabs](https://www.w3schools.com/howto/howto_js_tabs.asp)

---

## Modal (abrir automaticamente)

### Como fazer:
Ao recarregar a página, a modal deve aparecer automaticamente. Para isso, use um evento de carregamento da janela e adicione uma classe que torna a modal visível.

### Conceitos utilizados:
- Evento `window.onload` ou `window.addEventListener('load')`.
- Manipulação de classes para exibir a modal.

### Como exibir só uma vez com armazenamento local:
Você pode usar `localStorage` ou `sessionStorage` para guardar uma informação indicando que a modal já foi exibida. Antes de exibir novamente, o script verifica se essa informação já está salva. Se sim, não exibe a modal.

### Referencias:
- [MDN - window.load](https://developer.mozilla.org/pt-BR/docs/Web/API/Window/load_event)
- [MDN - localStorage](https://developer.mozilla.org/pt-BR/docs/Web/API/Window/localStorage)

---

## Acordeon (FAQ)

### Como fazer:
Ao clicar em uma pergunta, sua resposta deve ser exibida ou escondida. Isso é feito alternando uma classe CSS que controla a visibilidade do elemento de resposta.

### Elementos HTML utilizados:
- `.pergunta`: Elemento clicável (normalmente um `<dt>` ou `<button>`).
- Elemento seguinte (`.resposta`): Normalmente um `<dd>` ou `<div>` com o conteúdo que será exibido.

### Classes CSS fundamentais:
- `.ativo`: Torna a resposta visível ao ser adicionada.

### Conceitos utilizados:
- Evento de clique.
- Uso de `nextElementSibling` para acessar a resposta.
- Alternância de classe CSS com `classList.toggle`.

### Referencias:
- [Origamid - FAQ Acordeon](https://www.origamid.com/slide/javascript-comportamento/#/11)
- [MDN - nextElementSibling](https://developer.mozilla.org/pt-BR/docs/Web/API/Element/nextElementSibling)
