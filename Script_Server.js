const API_URL = "http://localhost:8080"; 

async function registrarUsuario() {
    try {
        let nombre = document.getElementById("nombre")?.value.trim();
        let email = document.getElementById("email")?.value.trim();
        let contraseña = document.getElementById("contraseña")?.value.trim();

        if (!nombre || !email || !contraseña) {
            alert("Por favor, completa todos los campos.");
            return;
        }

        let formData = new URLSearchParams();
        formData.append("nombre", nombre);
        formData.append("email", email);
        formData.append("contraseña", contraseña);

        let response = await fetch(`${API_URL}/register`, {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: formData.toString()
        });

        if (response.ok) {
            alert("Usuario registrado correctamente.");
        } else {
            let errorText = await response.text();
            alert("Error: " + errorText);
        }
    } catch (error) {
        console.error("Error en la solicitud:", error);
        alert("Ocurrió un error inesperado.");
    }
}

async function iniciarSesion() {
    try {
        let email = document.getElementById("loginEmail")?.value.trim();
        let contraseña = document.getElementById("loginPassword")?.value.trim();

        if (!email || !contraseña) {
            alert("Por favor, ingresa tu correo y contraseña.");
            return;
        }

        let formData = new URLSearchParams();
        formData.append("email", email);
        formData.append("contraseña", contraseña);

        let response = await fetch(`${API_URL}/login`, {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: formData.toString()
        });

        if (response.ok) {
            alert("Inicio de sesión exitoso.");
        } else {
            let errorText = await response.text();
            alert("Error: " + errorText);
        }
    } catch (error) {
        console.error("Error en la solicitud:", error);
        alert("Ocurrió un error inesperado.");
    }
}

async function obtenerClases() {
    try {
        let response = await fetch(`${API_URL}/clases`, { method: "GET" });
        let clases = await response.json();

        let listaClases = document.getElementById("listaClases");
        listaClases.innerHTML = "";
        clases.forEach(clase => {
            listaClases.innerHTML += `<li>${clase.nombre} - ${clase.hora} (${clase.fecha})</li>`;
        });
    } catch (error) {
        console.error("Error al obtener clases:", error);
        alert("No se pudieron cargar las clases.");
    }
}

async function reservarClase() {
    try {
        let usuarioId = document.getElementById("usuarioId")?.value.trim();
        let claseId = document.getElementById("claseId")?.value.trim();

        if (!usuarioId || !claseId) {
            alert("Por favor, completa todos los campos.");
            return;
        }

        let formData = new URLSearchParams();
        formData.append("usuario_id", usuarioId);
        formData.append("clase_id", claseId);

        let response = await fetch(`${API_URL}/reservar`, {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: formData.toString()
        });

        if (response.ok) {
            alert("Reserva confirmada.");
        } else {
            let errorText = await response.text();
            alert("Error: " + errorText);
        }
    } catch (error) {
        console.error("Error en la solicitud:", error);
        alert("Ocurrió un error inesperado.");
    }
}

document.addEventListener("DOMContentLoaded", () => {
    document.getElementById("registrarBtn")?.addEventListener("click", registrarUsuario);
    document.getElementById("loginBtn")?.addEventListener("click", iniciarSesion);
    document.getElementById("cargarClasesBtn")?.addEventListener("click", obtenerClases);
    document.getElementById("reservarBtn")?.addEventListener("click", reservarClase);
});

