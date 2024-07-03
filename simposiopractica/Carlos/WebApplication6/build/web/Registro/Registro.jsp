<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="..css/Registro.css"/>
<title>Registro</title>

<script>
    function validateForm(event) {
        var isValid = true;
        var inputs = document.querySelectorAll('#registerForm input, #registerForm select');
        
        // Limpiar mensajes de error
        inputs.forEach(function(input) {
            input.classList.remove('error');
            var errorElement = document.getElementById(input.name + '-error');
            if (errorElement) {
                errorElement.style.display = 'none';
            }
        });

        // Validar cada campo
        inputs.forEach(function(input) {
            if (!input.value.trim()) {
                input.classList.add('error');
                var errorElement = document.getElementById(input.name + '-error');
                if (errorElement) {
                    errorElement.style.display = 'block';
                }
                isValid = false;
            }
        });

        if (!isValid) {
            event.preventDefault(); // Prevenir el envío del formulario
        }
    }

    document.addEventListener("DOMContentLoaded", function() {
        var form = document.getElementById('registerForm');
        form.addEventListener('submit', validateForm);
    });
</script>
</head>
<body>
    <form id="registerForm" action="registrar..jsp" method="POST">
        <h2>Registro</h2>
        <div class="form-group">
            <input type="text" id="name" name="name" placeholder="Nombre">
            <span id="name-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <div class="form-group">
            <input type="email" id="email" name="email" placeholder="Correo electrónico">
            <span id="email-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <div class="form-group">
            <input type="password" id="password" name="password" placeholder="Contraseña">
            <span id="password-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <div class="form-group">
            <input type="text" id="numeroID" name="numeroID" placeholder="Número de Identificación">
            <span id="numeroID-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <div class="form-group">
            <input type="text" id="InstitucionEducativa" name="InstitucionEducativa" placeholder="Institución Educativa">
            <span id="InstitucionEducativa-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <div class="form-group">
            <input type="text" id="AreadeInteres" name="AreadeInteres" placeholder="Área de Interés">
            <span id="AreadeInteres-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <div class="form-group">
            <select id="TipoDeUsuario" name="TipoDeUsuario">
                <option value="" disabled selected>Selecciona el tipo de usuario</option>
                <option value="Asistente">Asistente</option>
                <option value="Ponente">Ponente</option>
                <option value="Empresa">Empresa</option>
            </select>
            <span id="TipoDeUsuario-error" class="error-message">Este campo es obligatorio.</span>
        </div>
        <input type="submit" value="Registrarse">
        <p class="login-text">¿Ya tienes una cuenta? <a href="IniciarSesion.html">Inicia sesión aquí</a>.</p>
    </form>
</body>
</html>
