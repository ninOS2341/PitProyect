MenuDentro = () => {
    var menu = document.getElementById('Menu');
    const divMenu = document.createElement('div');
     

    divMenu.id = 'divMenu';

    menu.className = 'menuExt';

    document.getElementById('Menu').replaceWith(menu);
    document.getElementById('TituloMenu').remove();
    
}

MenuFuera = () => {
    var menu = document.getElementById('Menu');
    const TituloMenu = document.createElement('p');
    
    TituloMenu.id = 'TituloMenu';
    TituloMenu.innerText = 'Menú';  
    menu.className = 'menuCon';

    document.getElementById('Menu').replaceWith(menu);
    document.getElementById('Menu').appendChild(TituloMenu);
    document.getElementById('divMenu').remove();
}
MenuinfoDentro = () => {


    if (document.getElementById('divInfo')) {
        console.log("Ya existe el div");
    } else {
        var pag = document.getElementById("Pagp");

        const cambio = document.createElement('a');
        const btnSalir = document.createElement('button');
        const icono = document.createElement('i');
        const divInfo = document.createElement('div');
        const titulo = document.createElement('div');
        const divTitulo = document.createElement('div');
        const divCuerpo = document.createElement('div');
        const divPie = document.createElement('div');
        const divOpciones = document.createElement('div');

        divInfo.id = 'divInfo';
        divTitulo.id = 'infoT';
        divCuerpo.id = 'infoC';
        divPie.id = 'infoP';
        btnSalir.id = 'infoBtn';
        divOpciones.id = 'divOpciones';


        titulo.innerText = 'Opciones';
        cambio.innerText = 'Cambiar de cuenta';
        btnSalir.innerText = 'Salir';

        icono.className = 'fa-solid fa-user';
        cambio.className = 'infoOp';
        cambio.href = '../index.html'

        btnSalir.onclick = () => {
            window.open();

        }

        divTitulo.appendChild(titulo);

        divCuerpo.appendChild(divOpciones);
        divOpciones.appendChild(icono);
        divOpciones.appendChild(cambio);

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
