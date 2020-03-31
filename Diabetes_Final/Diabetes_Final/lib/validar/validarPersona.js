function validar() {
    var nombre, apellido_pa, apellido_ma, contasenia, edad, anioscondiabetes, fechainicio, telefono, direccion, expresion;

    nombre = document.getElementById("nombre_persona").value;
    apellido_pa = document.getElementById("apellido_pa").value;
    apellido_ma = document.getElementById("apellido_ma").value;
    contasenia = document.getElementById("contrasenia").value;
    edad = document.getElementById("edad_persona").value;
    anioscondiabetes = document.getElementById("anios_persona").value;
    fechainicio = document.getElementById("fecha").value;
    telefono = document.getElementById("telefono_persona").value;
    direccion = document.getElementById("direccion_persona").value;

    if (nombre === "" || apellido_pa === "" || apellido_ma === "" || contasenia === "" || edad === "" || anioscondiabetes === ""
        || fechainicio === "" || telefono === "" || direccion === "") {
        alert("Todos los campos son Obligatorios, Por favor Ingrese los datos Correspodientes");
        return false;
    } else if (nombre.length > 20) {
        alert("El Nombre es muy Largo, Por favor Ingresa los datos con un Maximo de 20 Digitos");
        return false;
    } else if (apellido_pa.length > 20) {
        alert("El Nombre es muy Largo, Por favor Ingresa los datos con un Maximo de 20 Digitos");
        return false
    } else if (apellido_ma.length > 20) {
        alert("El Nombre es muy Largo, Por favor Ingresa los datos con un Maximo de 20 Digitos");
        return false
    } else if (edad.length > 2) {
        alert("El Nombre es muy Largo, Por favor Ingresa los datos con un Maximo de 20 Digitos");
        return false
    }
}