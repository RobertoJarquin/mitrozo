<%-- 
    Document   : index
    Created on : 2 jul. 2024, 18:29:20
    Author     : barro
--%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Simposio de Informática Empresarial</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="css/style.css"> 
    <link rel="stylesheet" href="../css/InioSesion.css">
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simposio de Informática Empresarial</title>
    
</head>
<body>
    <div class="binary-rain"></div>

    <div class="fixed-header">
        <div class="header-top">
            <div class="logo-section">
                <img src="https://seeklogo.com/images/U/universidad-de-costa-rica-logo-0186A7A754-seeklogo.com.png" alt="Logo-1">
                <img src="https://i.ibb.co/qJ7H9y8/SSur-CIE-vertical.png" alt="Logo-2">
            </div>
            <h1 class="title">Simposio de Informática Empresarial</h1>
            <%
                String userName = (String) session.getAttribute("userName");
                String userEmail = (String) session.getAttribute("userEmail");
                if (userName != null && userEmail != null) { // Usuario autenticado
            %>
            <div>
                <p>Bienvenido, <%= userName%>!</p>
                <p>Correo electrónico: <%= userEmail%></p>          
                <a class="btn btn-logout" href="Registro/CerrarSesion.jsp">Cerrar Sesión</a>
            </div>
            <% } else { // Usuario no autenticado %>
            <a class="btn btn-login" href="Registro/Login.jsp">Iniciar Sesión</a>
            <a class="btn btn-Signup" href="Registro/Registro.jsp">Regístrate</a>
            <% } %>
        </div>
        <div class="header-bottom">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="Programa.html">Programa</a>
                            <div class="dropdown-content">
                                <a href="#">w</a>
                                <a href="#">w</a>
                                <a href="#">w</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#">Actividades</a>
                            <div class="dropdown-content">
                                <a href="#">Charlas</a>
                                <a href="#">Talleres</a>
                                <a href="#">Conferencias</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#">Mapa</a>
                            <div class="dropdown-content">
                                <a href="#">s</a>
                                <a href="#">s</a>
                                <a href="#">s</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>



 <!-- Añadir saltos de línea para crear espacio entre el header y el contenido principal -->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        <div class="container main-content">
    <div class="row">
        <div class="col-md-6">
            <div class="textoinicio">
                <h2>Bienvenidos al Simposio de Informática Empresarial</h2>
                <p>El Simposio de Informática Empresarial es un evento anual que reúne a profesionales, académicos y estudiantes para discutir las últimas tendencias y avances en el campo de la informática empresarial. Es una excelente oportunidad para aprender, compartir conocimientos y hacer contactos en la industria.</p>
            </div>
            <!-- Fecha y Lugar -->
            <div class="date-location">
                <h3>Fecha y Lugar</h3>
                <p>Fecha: 25 de Noviembre de 2023</p>
                <p>Lugar: Centro de Convenciones Internacional</p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="image-section">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
</div>
        
   
    
    
    <br>
  <div class="container">
        <div class="schedule">
            <div class="day">
                <h2>Día 1</h2>
                <ul>
                    <li><strong>8:00 AM:</strong> lkdjsfgkjdsfjlgkldfsjgklwekljgklwerjglwejrglkerwjgkljwelkrgjwklerjgklerwjgkerwjgklerwjklgjerwkjgewer</li>
                    <li><strong>9:00 AM:</strong> Actividad 2</li>
                    <li><strong>10:00 AM:</strong> Actividad 3</li>
                </ul>
            </div>
            <div class="day">
                <h2>Día 2</h2>
                <ul>
                    <li><strong>8:00 AM:</strong> lkdjsfgkjdsfjlgkldfsjgklwekljgklwerjglwejrglkerwjgkljwelkrgjwklerjgklerwjgkerwjgklerwjklgjerwkjgewer</li>
                    <li><strong>9:00 AM:</strong> Actividad 2</li>
                    <li><strong>10:00 AM:</strong> Actividad 3</li>
                </ul>
            </div>
            <div class="day">
                <h2>Día 3</h2>
                <ul>
                    <li><strong>8:00 AM:</strong> lkdjsfgkjdsfjlgkldfsjgklwekljgklwerjglwejrglkerwjgkljwelkrgjwklerjgklerwjgkerwjgklerwjklgjerwkjgewer</li>
                    <li><strong>9:00 AM:</strong> Actividad 2</li>
                    <li><strong>10:00 AM:</strong> Actividad 3</li>
                </ul>
            </div>
        </div>
    </div>






        
       <div class="container1">
        <img src="https://image.freepik.com/vector-gratis/concepto-adorable-diseno-web-dibujado-mano_23-2147950087.jpg" class="robot-image">
        <div class="text-content">
            <h2>ssssssssss</h2>
            <h1>Reeeeeeeo</h1>
            <p>eeeetttttttttdfggggggggggggggffffffffffffffffssss
                ssssssssssssssssssssssssssss ssssssssfddddddddddddddddd ddddddddddd  ddd
                ddddddddddddddddd dddddddddddddddddddddddddddddd ddddddddddddddddddddddddddddddd 
                ddddddddddddddddddddddddddddddd dddddddddddddddddddddddd ddddddddd
                ggggggggggggggggggg gggggggggggggggggg gggggggggggggggggggg ggggggg
                 ffffffffff  ffffffffffffffff fffffffffffffffffffff fffffffffff88888
            </p>
        </div>
    </div>  
        
        
        <!-- imagen que se mueve arriba y abajo pepe -->
        <div class="container">
        <div class="content">
            <h1>ACERCA DEL</h1>
            <h2>Simposio</h2>
            <p>fgfffffffffffffffff</p>
            <p>dddddddddddd7777</p>
            <button class="btn">Ver Más</button>
        </div>
        <div class="logo">
            <img src="https://image.freepik.com/vector-gratis/concepto-adorable-diseno-web-dibujado-mano_23-2147950087.jpg" class="Imagen-pepe">
        </div>
    </div>
        
        
         
        
        
        <!-- imagen que aparece y desaparece -->
        <div class="containerjuan">
        <img src="https://image.freepik.com/vector-gratis/concepto-adorable-diseno-web-dibujado-mano_23-2147950087.jpg" class="imagen-juan">
        <div class="text-contentjuan">
            <h2>ssssssssss</h2>
            <h1>Reeeeeeeo</h1>
            <p>eeeettttttttt6</p>
        </div>
    </div>  
         
   <!--  Para que se agrande y se achique la imagen  -->
        <div class="containerMessi">
        <img src="https://image.freepik.com/vector-gratis/concepto-adorable-diseno-web-dibujado-mano_23-2147950087.jpg" class="imagen-Messi">
        <div class="text-contentMessi">
            <h2>ssssssssss</h2>
            <h1>Reeeeeeeo</h1>
            <p>eeeettttttttt5</p>
        </div>
    </div>        
        
        <section class="hero">
            <div class="hero-content">
                <h1>Simposio de Informática Empresarial</h1>
                <p>Descubre las últimas tendencias y tecnologías en informática empresarial.</p>
                <button class="btn">Descargar Agenda</button>
            </div>
            <div class="hero-images">
                <div class="image-card">
                    <img src="https://i.pinimg.com/736x/dc/09/72/dc09723709d9971b03a2bbff23ea86ff--traffic-light-ea.jpg" alt="Imagen de taller">
                    <div class="image-overlay">
                        <h3>Talleres</h3>
                        <p>15 de Julio, 2024</p>
                        <button class="btn">Explorar</button>
                    </div>
                </div>
                <div class="image-card">
                    <img src="https://th.bing.com/th/id/R.70af6ed277cdbc47f67dec941818ec87?rik=TgnXUZGroKDupg&riu=http%3a%2f%2fpiq.codeus.net%2fstatic%2fmedia%2fuserpics%2fpiq_46974_400x400.png&ehk=9dnET%2b8WNXyeo8T%2f6oxPJI9eo7GXWYci7I84e4QrNQY%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1" alt="Imagen de charla">
                    <div class="image-overlay">
                        <h3>Charlas</h3>
                        <p>16 de Julio, 2024</p>
                        <button class="btn">Explorar</button>
                    </div>
                </div>
                <div class="image-card">
                    <img src="https://th.bing.com/th/id/R.70af6ed277cdbc47f67dec941818ec87?rik=TgnXUZGroKDupg&riu=http%3a%2f%2fpiq.codeus.net%2fstatic%2fmedia%2fuserpics%2fpiq_46974_400x400.png&ehk=9dnET%2b8WNXyeo8T%2f6oxPJI9eo7GXWYci7I84e4QrNQY%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1" alt="Imagen de charla">
                    <div class="image-overlay">
                        <h3>Alo</h3>
                        <p>16 de Julio, 2024</p>
                        <button class="btn">Explorar</button>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="team-section">
        <h2>Introduce Yourself To</h2>
        <h1>Our Team of Experts</h1>
        <div class="team-container">
            <div class="team-member">
                <img src="brendon.jpg" alt="Brendon M">
                <h3>Brendon M</h3>
                <p>CEO & Founder</p>
            </div>
            <div class="team-member">
                <img src="jodi.jpg" alt="Jodi J. Appleby">
                <h3>Jodi J. Appleby</h3>
                <p>Real Estate Developer</p>
            </div>
            <div class="team-member">
                <img src="justin.jpg" alt="Justin S. Meza">
                <h3>Justin S. Meza</h3>
                <p>Listing Agent</p>
            </div>
            <div class="team-member">
                <img src="susan.jpg" alt="Susan T. Smith">
                <h3>Susan T. Smith</h3>
                <p>Buyer's Agent</p>
            </div>
            <div class="team-member">
                <img src="brendon.jpg" alt="Brendon M">
                <h3>Brendon M</h3>
                <p>CEO & Founder</p>
            </div>
            <div class="team-member">
                <img src="jodi.jpg" alt="Jodi J. Appleby">
                <h3>Jodi J. Appleby</h3>
                <p>Real Estate Developer</p>
            </div>
            <div class="team-member">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2AZyBXeOOJtoXfm0YQsIStjAUMU0zZd9O-w&s" alt="Justin S. Meza">
                <h3>Justin S. Meza</h3>
                <p>Listing Agent</p>
            </div>
            <div class="team-member">
                <img src="susan.jpg" alt="Susan T. Smith">
                <h3>Susan T. Smith</h3>
                <p>Buyer's Agent</p>
            </div>
        </div>
    </section>

     <div class="container">
        <h2>CHECKOUT OUR NEW</h2>
        <h1>Latest Listed Properties</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id dolor id.</p>
        <div class="properties">
            <div class="property">
                <img src="image1.jpg" alt="Tranquil Haven in the Woods">
                <div class="tag popular">Popular</div>
                <h3>$ 5,970</h3>
                <h4>Tranquil Haven in the Woods</h4>
                <p>102 Hart Street, New York</p>
                <div class="details">
                    <span>4 bed</span>
                    <span>3 bath</span>
                    <span>75m<sup>2</sup></span>
                </div>
            </div>
            <div class="property">
                <img src="image2.jpg" alt="Serene Retreat by the Lake">
                <div class="tag new-listing">New Listing</div>
                <h3>$ 1,970</h3>
                <h4>Serene Retreat by the Lake</h4>
                <p>102 Hart Street, New York</p>
                <div class="details">
                    <span>4 bed</span>
                    <span>3 bath</span>
                    <span>75m<sup>2</sup></span>
                </div>
            </div>
            <div class="property">
                <img src="image3.jpg" alt="Charming Cottage in the Meadow">
                <div class="tag discounted-price">Discounted Price</div>
                <h3>$ 3,450</h3>
                <h4>Charming Cottage in the Meadow</h4>
                <p>102 Hart Street, New York</p>
                <div class="details">
                    <span>4 bed</span>
                    <span>3 bath</span>
                    <span>75m<sup>2</sup></span>
                </div>
            </div>
            <div class="property">
                <img src="image3.jpg" alt="Charming Cottage in the Meadow">
                <div class="tag discounted-price">Discounted Price</div>
                <h3>$ 3,450</h3>
                <h4>Charming Cottage in the Meadow</h4>
                <p>102 Hart Street, New York</p>
                <div class="details">
                    <span>4 bed</span>
                    <span>3 bath</span>
                    <span>75m<sup>2</sup></span>
                </div>
            </div>
            <div class="property">
                <img src="image3.jpg" alt="Charming Cottage in the Meadow">
                <div class="tag discounted-price">Discounted Price</div>
                <h3>$ 3,450</h3>
                <h4>Charming Cottage in the Meadow</h4>
                <p>102 Hart Street, New York</p>
                <div class="details">
                    <span>4 bed</span>
                    <span>3 bath</span>
                    <span>75m<sup>2</sup></span>
                </div>
            </div>
           
            <div class="property">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2AZyBXeOOJtoXfm0YQsIStjAUMU0zZd9O-w&s" alt="Charming Cottage in the Meadow">
                <div class="tag discounted-price">Discounted Price</div>
                <h3>$ 3,450</h3>
                <h4>Charming Cottage in the Meadow</h4>
                <p>102 Hart Street, New York</p>
                <div class="details">
                    <span>4 bed</span>
                    <span>3 bath</span>
                    <span>75m<sup>2</sup></span>
                </div>
            </div>
            <!-- comm
            <!-- comment -->
            <!-- Repeat the above blocks for each property -->
        </div>
    </div>

      <section class="who-we-are">
        <div class="content">
            <h2>Who Are We</h2>
            <h1>Assisting individuals in locating the appropriate real estate.</h1>
            <p>Donec porttitor euismod dignissim. Nullam a lacinia ipsum, nec dignissim purus. Nulla convallis ipsum molestie nibh malesuada, ac malesuada leo volutpat.</p>
            <div class="features">
                <div class="feature">
                    <div class="icon">?</div>
                    <h3>Donec porttitor euismod</h3>
                    <p>Nullam a lacinia ipsum, nec dignissim purus. Nulla</p>
                </div>
                <div class="feature">
                    <div class="icon">?</div>
                    <h3>Donec porttitor euismod</h3>
                    <p>Nullam a lacinia ipsum, nec dignissim purus. Nulla</p>
                </div>
            </div>
        </div>
        <div class="images">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2AZyBXeOOJtoXfm0YQsIStjAUMU0zZd9O-w&s" alt="House 1" class="main-image">
            <div class="small-images">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2AZyBXeOOJtoXfm0YQsIStjAUMU0zZd9O-w&s" alt="House 2">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2AZyBXeOOJtoXfm0YQsIStjAUMU0zZd9O-w&s" alt="House 3">
            </div>
        </div>
    </section>

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
     <footer class="footer">
            <div class="footer-container">
                <div class="message">
                    <p>¿Quieres estar al tanto de las actividades del simposio? Únete a nuestra Comunidad</p>
                    <ul class="social-icons">
                        <li><a href="#" class="whatsapp"><i class="fab fa-whatsapp"></i></a></li>
                        <li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#" class="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#" class="twitter"><i class="fab fa-twitter"></i></a></li>
                    </ul>
                </div>
                <ul>
                    <li>Actividades
                        <ul>
                            <li>Charlas</li>
                            <li>Talleres</li>
                            <li>Conferencias</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li>Contacto
                        <ul>
                            <li>Email</li>
                            <li>Teléfono</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li>Información del Simposio
                        <ul>
                            <li>Mapa</li>
                            <li>Programa</li>
                        </ul>
                    </li>
                </ul>
                <div class="copy">
                    &copy; 2024 Maleducados. Todos los derechos reservados.
                </div>
            </div>
        </footer>
        
        
        
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="Scrip/Scrip.js"></script>
    
    <!-- La imagen que desaparece -->
    <script src="Scrip/Imagen.js"></script>
    
</body>
</html>