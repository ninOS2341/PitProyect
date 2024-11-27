MenuDentro = () => {
    var menu = document.getElementById('Menu');

    menu.style.width = '20rem'

    document.getElementById('Menu').replaceWith(menu);
}

MenuFuera = () => {
    var menu = document.getElementById('Menu');
    menu.style.width = '100%'

    document.getElementById('Menu').replaceWith(menu);
}
MenuinfoDentro = () => {
    

    if (document.getElementById('divInfo')) {
        console.log("Ya existe el div");
    } else {
        var pag = document.getElementById("Pagp");
        const divInfo=document.createElement('div')
        const titulo = document.createElement('div');
        const cambio = document.createElement('a');
        const btnSalir = document.createElement('button');
        const icono = document.createElement('i');
        
        const divTitulo = document.createElement('div');
        const divCuerpo = document.createElement('div');
        const divPie = document.createElement('div');

        divInfo.id = 'divInfo';
        divTitulo.id = 'infoT';
        divCuerpo.id = 'infoC';
        divPie.id = 'infoP';


        titulo.innerText = 'Opciones';
        cambio.innerText = 'Cambiar de cuenta';

        icono.className = 'fa-solid fa-user';

        cambio.className = 'infoOp';
        cambio.href = '../index.html'

        btnSalir.onclick = () => {
            window.open();

        }

        divTitulo.appendChild(titulo);

        divCuerpo.appendChild(icono);
        divCuerpo.appendChild(cambio);

        divPie.appendChild(btnSalir);

        divInfo.appendChild(divTitulo);
        divInfo.appendChild(divCuerpo);
        divInfo.appendChild(divPie);
        pag.appendChild(divInfo);
    }

}
eleminarInfo = () => {


    var divInfo = document.getElementById("divInfo");

    if (divInfo.id == "divInfo") {

        divInfo.remove();
        console.log("elnimar");
    }

}
