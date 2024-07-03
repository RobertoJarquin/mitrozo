/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package archivos;




import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class GuardarUsuario {

     public boolean guardarUsuario(String nombre, String email, String contraseña, String cedula, String institucion, String area) {
        String rutaArchivo = "C:/Users/metal/OneDrive/Documentos/rabito/users.txt";
        String Maldades = "123456789ABCDEFGHIJKMNÑOPQRSTUVWXYZ";

        String[] esto = Codificar(Maldades, nombre, email, contraseña, cedula, institucion, area);

        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(rutaArchivo, true));

            writer.write( esto[0] + "/n" +  esto[1] + "/n" + 
                    esto[2] + "/n" + esto[3] + "/n" + esto[4] + "/n" + esto[5]);
            writer.newLine();
            writer.newLine();

            writer.close();

            System.out.println("Usuario guardado correctamente en el archivo.");
            return true;
        } catch (IOException e) {
            System.out.println("Error al guardar el usuario: " + e.getMessage());
            return false;
        }
    }

    public static String[] Codificar(String Maldades, String... datos) {
        String[] esto = new String[datos.length];
        for (int j = 0; j < datos.length; j++) {
            StringBuilder textoCodificado = new StringBuilder();
            String dato = datos[j].toUpperCase();
            char caracter;
            for (int i = 0; i < dato.length(); i++) {
                caracter = dato.charAt(i);
                int pos = Maldades.indexOf(caracter);
                if (pos == -1) {
                    textoCodificado.append(caracter);
                } else {
                    textoCodificado.append(Maldades.charAt((pos + 5) % Maldades.length()));
                }
            }
            esto[j] = textoCodificado.toString();
        }
        return esto;
    }

}

