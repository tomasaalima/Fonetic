
const value = document.querySelector("#nivel");

function estaVisivel (el) {

    const posicoes = el.getBoundingClientRect();
    const inicio = posicoes.top;
    const fim = posicoes.bottom;

    let estaVisivel = false;

    if ((inicio >= 0) && (fim <= window.innerHeight)){
        estaVisivel = true;
    }

    return estaVisivel;
}

console.log(estaVisivel(p));