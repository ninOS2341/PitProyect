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
        const textoU = document.createElement('a');
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
        textoU.href = 'admin.html';

        divR.appendChild(iconoR);
        divR.appendChild(textoR);
        divR.onclick = mainRegistro = () => {
            if (document.getElementById('contenedor')) {
                const NSeccion = document.getElementById('NSeccion');
                const area = document.getElementById('area');
                const contenedor = document.getElementById('contenedor');

                /*Creacion del formulario*/
                const formulario = document.createElement('form');
                const formularioT = document.createElement('div');
                const formularioC = document.createElement('div');
                const formularioP = document.createElement('div');
                const titulo = document.createElement('h2');
                const fotografiaL = document.createElement('label');
                const fotografiaI = document.createElement('input');
                const NSL = document.createElement('label');
                const NSI = document.createElement('input');
                const nombreL = document.createElement('label');
                const nombreI = document.createElement('input');
                const apellidosL = document.createElement('label');
                const apellidosI = document.createElement('input');
                const direccionL = document.createElement('label');
                const direccionI = document.createElement('input');
                const emaiL = document.createElement('label');
                const emaiI = document.createElement('input');
                const telefonoL = document.createElement('label');
                const telefonoI = document.createElement('input');
                const edadL = document.createElement('label');
                const edadI = document.createElement('input');
                const curpL = document.createElement('label');
                const curpI = document.createElement('input');
                const rfcL = document.createElement('label');
                const rfcI = document.createElement('input');
                const nssL = document.createElement('label');
                const nssI = document.createElement('input');
                const boton = document.createElement('button');
                const divF = document.createElement('div');
                const divNS = document.createElement('div');
                const divN = document.createElement('div');
                const divA= document.createElement('div');
                const divD = document.createElement('div');
                const divE = document.createElement('div');
                const divT = document.createElement('div');
                const divEd = document.createElement('div');
                const divC = document.createElement('div');
                const divNSS = document.createElement('div');

                formulario.id = 'Registro';
                formulario.action = '';
                formulario.method = 'post';
                titulo.innerText = 'Registro Para Usuarios (RPU)';

                fotografiaL.innerText = 'Foto';
                fotografiaI.type='file';
                fotografiaI.id = 'fotografia';
                fotografiaI.name = 'fotografia';
                fotografiaI.accept = 'image/*';
                fotografiaI.required = 'true';

                NSL.innerText = 'Numero de Seguridad';
                NSI.type = "number";
                NSI.id='id_empleado';
                NSI.name = "id_empleado";
                NSI.required = 'true';

                nombreL.innerText = 'Nombre(s)';
                nombreI.type = 'text';
                nombreI.id = 'nombre';
                nombreI.name = 'nombre';
                nombreI.maxLength = '50';
                nombreI.required = 'true';

                apellidosL.innerText = 'Apellidos';
                apellidosI.type = 'text';
                apellidosI.id = 'apellido';
                apellidosI.name = 'apellido';
                apellidosI.maxLength = '100';
                apellidosI.required = 'true';

                edadL.innerText = 'Edad';
                edadI.type = 'number';
                edadI.id = 'edad';
                edadI.name = 'edad';
                edadI.max = '99';
                edadI.required = 'true';
                
                direccionL.innerText = 'Direccion';
                direccionI.type = 'text';
                direccionI.id = 'direccion';
                direccionI.name = 'direccion';
                direccionI.maxLength = '200';
                direccionI.required = 'true';

                emaiL.innerText = 'Email';
                emaiI.type = 'email';
                emaiI.id = 'email';
                emaiI.name = 'email';
                emaiI.maxLength = '100';
                emaiI.required = 'true';

                telefonoL.innerText = 'Teléfono';
                telefonoI.type = 'text';
                telefonoI.id = 'telefono';
                telefonoI.name = 'telefono';
                telefonoI.maxLength = '15';
                telefonoI.required = 'true';

                curpL.innerText = 'CURP';
                curpI.type = 'text';
                curpI.id = 'curp';
                curpI.name = 'curp';
                curpI.maxLength = '18';
                curpI.required = 'true';

                rfcL.innerText = 'RFC';
                rfcI.type = 'text';
                rfcI.id = 'rfc';
                rfcI.name = 'rfc';
                rfcI.maxLength = '13';
                rfcI.required = 'true';

                nssL.innerText = 'Numero de Seguro Social'
                nssI.type = 'text';
                nssI.id = 'nss';
                nssI.name = 'nss';
                nssI.maxLength = '12';
                nssI.required = 'true';

                boton.type = 'submit';
                boton.innerText = 'Guardar Empleados';

                formularioT.id = 'formularioT';
                formularioC.id = 'formularioC';
                formularioP.id = 'formularioP';

                contenedor.remove();
                NSeccion.innerText = 'Registro';
                area.innerText = 'Usuarios';
                console.log("Cambio Registro");
                
                document.getElementById('Principal').appendChild(formulario);

                formulario.appendChild(formularioT);
                formulario.appendChild(formularioC);
                formulario.appendChild(formularioP);

                formularioT.appendChild(titulo);

                formularioC.appendChild(divF);
                divF.appendChild(fotografiaL);
                divF.appendChild(fotografiaI);

                formularioC.appendChild(divNS);
                divNS.appendChild(NSL);
                divNS.appendChild(NSI);

                formularioC.appendChild(divN);
                divN.appendChild(nombreL);
                divN.appendChild(nombreI);

                formularioC.appendChild(divA);
                divA.appendChild(apellidosL);
                divA.appendChild(apellidosI);

                formularioC.appendChild(divD);
                divD.appendChild(direccionL);
                divD.appendChild(direccionI);

                formularioC.appendChild(divE);
                divE.appendChild(emaiL);
                divE.appendChild(emaiI);

                formularioC.appendChild(divT);
                divT.appendChild(telefonoL);
                divT.appendChild(telefonoI);

                formularioC.appendChild(divEd);
                divEd.appendChild(edadL);
                divEd.appendChild(edadI);

                formularioC.appendChild(divC);
                divC.appendChild(curpL);
                divC.appendChild(curpI);

                formularioC.appendChild(divNSS);
                divNSS.appendChild(nssL);
                divNSS.appendChild(nssI);
                
                
                formularioP.appendChild(boton);
                
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
        cambio.href = '../index.html';

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


