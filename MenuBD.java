package Test;

//import datos.PersonaJDBC;
//import domain.Persona;
//import java.util.List;
import java.util.Scanner;

public class TestPersona {
    
    //KEVIN MIGUEL HENRIQUEZ PEREZ  COD: HP0826022019   PROGRAMACION APLICADA 1 C-02-21
      
    public static void main(String[] args) {
        
        int op = 0;
        do{
            System.out.println("\t*** MENU ***\n");
            System.out.println("\t*** MENU DE LA BASE DE DATOS: VENTAS ***\n");
            System.out.println("\t>>>TABLAS DE DB <<<\n");
            System.out.println("1- Categoria");
            System.out.println("2- Cliente");
            System.out.println("3- Compra");
            System.out.println("4- Marca Detalle");
            System.out.println("4- Marca");
            System.out.println("5- Presentacio");
            System.out.println("6- Producto");
            System.out.println("7- Proveedor");
            System.out.println("8- Venta");
            System.out.println("10- Venta Detalle");
            System.out.println("11- Salir");
            do{
                System.out.println("Opcion:>");
                Scanner leer = new Scanner(System.in);
                op  = leer.nextInt();
                if(op<1 || op >5){
                    System.out.println("Opcion [" + op + "] no es valida!");
                }
            }while(op<1 || op >5);
            switch(op){
                case 1:
                    ActionCRUD.InsertData();
                     break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    ActionCRUD.ExtraerData();
                     break;
                case 3:
                    ActionCRUD.UpdateData();
                     break;
                case 4:
                     ActionCRUD.DeleteData();
                     break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
}
