MenuDentro = () => {

    console.log("Dentro de menu");

    if (document.getElementById('divCuerpo')) {
        console.log("Ya esta abiero el div");
    } else {
        const Menu = document.getElementById('Menu');
        const divCuerpo = document.createElement('div');
        const TituloMenu = document.createElement('p');
        const divE = document.createElement('div');
        const logoE = document.createElement('div');
        const nombreE = document.createElement('p');
        const divOps = document.createElement('div');
        const divU = document.createElement('div');
        const textoU = document.createElement('p');
        const iconoU = document.createElement('i');
        const divR = document.createElement('div');
        const textoR = document.createElement('p');
        const iconoR = document.createElement('i');

        divCuerpo.id = 'divCuerpo';
        TituloMenu.id = 'TituloMenu';
        divE.id = 'divE';
        logoE.id = 'logE';
        nombreE.id = 'nombreE';
        divOps.id = 'divOps';
        divR.id = 'divR';
        divU.id = 'divU';

        Menu.className = 'menuExt';
        iconoU.className = 'fa-solid fa-users';
        iconoR.className = 'fa-solid fa-address-card';

        document.getElementById('TituloMenu').remove();
        document.getElementById('Menu').replaceWith(Menu);

        nombreE.innerText = 'The \u03C0it Corps'
        TituloMenu.innerText = 'Menú';
        textoU.innerText = 'Trabajadores';
        textoR.innerText = 'Registro';


        Menu.appendChild(divCuerpo);
        Menu.appendChild(TituloMenu);

        divCuerpo.appendChild(divE);
        divCuerpo.appendChild(divOps);

        divE.appendChild(logoE);
        divE.appendChild(nombreE)

        divOps.appendChild(divU);
        divOps.appendChild(divR)

        divU.appendChild(iconoU);
        divU.appendChild(textoU);

        divR.appendChild(iconoR);
        divR.appendChild(textoR);
        divR.onclick = mainRegistro = () => {
            if (document.getElementById('contenedor')) {
                const NSeccion = document.getElementById('NSeccion');
                const area = document.getElementById('area');
                const contenedor = document.getElementById('contenedor');

                contenedor.remove();
                console.log("Cambio Registro");


                NSeccion.innerText = 'Registro';
                area.innerText = 'Usuarios';
            } else {
                console.log("Ya se cambio el div")
            }

        }

    }


}

MenuFuera = () => {
    const Menu = document.getElementById('Menu');


    Menu.className = 'menuCon';
    const eliminar = document.getElementById('divCuerpo');
    eliminar.remove();


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

    if (document.getElementById("divInfo")) {

        divInfo.remove();
        console.log("elnimar");
    } else {
        console.log("No existe e div");

    }

}


