
package Interface;

import java.util.Scanner;

public class MenuTabla {
      
    public static void CategoriaTB(){
        Infor();
        int op = 0;
        do{
            System.out.println("\t*** MENU TABLA CATEGORIA ***\n");
            System.out.println("1- Insertar nuevo registro");
            System.out.println("2- Mostrar la tabla");
            System.out.println("3- Modificar un registro");
            System.out.println("4- Eliminar un registro");
            System.out.println("5- Salir");
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
                    //ActionCRUD.InsertData();
                    break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    //ActionCRUD.ExtraerData();
                    break;
                case 3:
                    //ActionCRUD.UpdateData();
                    break;
                case 4:
                   // ActionCRUD.DeleteData();
                    break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
    
    public static void ClienteTB(){
        Infor();
        int op = 0;
        do{
            System.out.println("\t*** MENU TABLA CLIENTE ***\n");
            System.out.println("1- Insertar nuevo registro");
            System.out.println("2- Mostrar la tabla");
            System.out.println("3- Modificar un registro");
            System.out.println("4- Eliminar un registro");
            System.out.println("5- Salir");
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
                    //ActionCRUD.InsertData();
                    break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    //ActionCRUD.ExtraerData();
                    break;
                case 3:
                    //ActionCRUD.UpdateData();
                    break;
                case 4:
                   // ActionCRUD.DeleteData();
                    break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
    
    public static void MarcaTB(){
        Infor();
        int op = 0;
        do{
            System.out.println("\t*** MENU TABLA MARCA ***\n");
            System.out.println("1- Insertar nuevo registro");
            System.out.println("2- Mostrar la tabla");
            System.out.println("3- Modificar un registro");
            System.out.println("4- Eliminar un registro");
            System.out.println("5- Salir");
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
                    //ActionCRUD.InsertData();
                    break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    //ActionCRUD.ExtraerData();
                    break;
                case 3:
                    //ActionCRUD.UpdateData();
                    break;
                case 4:
                   // ActionCRUD.DeleteData();
                    break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
    
     public static void PresentacioTB(){
        Infor();
        int op = 0;
        do{
            System.out.println("\t*** MENU TABLA PRESENTACION ***\n");
            System.out.println("1- Insertar nuevo registro");
            System.out.println("2- Mostrar la tabla");
            System.out.println("3- Modificar un registro");
            System.out.println("4- Eliminar un registro");
            System.out.println("5- Salir");
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
                    //ActionCRUD.InsertData();
                    break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    //ActionCRUD.ExtraerData();
                    break;
                case 3:
                    //ActionCRUD.UpdateData();
                    break;
                case 4:
                   // ActionCRUD.DeleteData();
                    break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
     
      public static void ProductoTB(){
        Infor();
        int op = 0;
        do{
            System.out.println("\t*** MENU TABLA PRODUCTO ***\n");
            System.out.println("1- Insertar nuevo registro");
            System.out.println("2- Mostrar la tabla");
            System.out.println("3- Modificar un registro");
            System.out.println("4- Eliminar un registro");
            System.out.println("5- Salir");
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
                    //ActionCRUD.InsertData();
                    break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    //ActionCRUD.ExtraerData();
                    break;
                case 3:
                    //ActionCRUD.UpdateData();
                    break;
                case 4:
                   // ActionCRUD.DeleteData();
                    break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
      
       public static void ProveedorTB(){
        Infor();
        int op = 0;
        do{
            System.out.println("\t*** MENU TABLA PROVEEDOR ***\n");
            System.out.println("1- Insertar nuevo registro");
            System.out.println("2- Mostrar la tabla");
            System.out.println("3- Modificar un registro");
            System.out.println("4- Eliminar un registro");
            System.out.println("5- Salir");
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
                    //ActionCRUD.InsertData();
                    break;
                case 2:
                    System.out.println(">>> Extrayendo la base de datos, por favor espere!...");
                    //ActionCRUD.ExtraerData();
                    break;
                case 3:
                    //ActionCRUD.UpdateData();
                    break;
                case 4:
                   // ActionCRUD.DeleteData();
                    break;
            }
        }while(op != 5);
        System.out.println(">>> PROGRAMA TERMINADO <<<");
    }
    
    public static void Infor(){
       System.out.println("\nPROGRAMACÓN APLICADA 1");
       System.out.println("\nINTEGRANTES:"); 
       System.out.println("Marlon Enrique Moran Guevara");
       System.out.println("Jairo Vladimir Osorio Portillo");
       System.out.println("Wilmer Omar Alvarez Sanchez");
       System.out.println("Welner Edgardo Catalan Rivera");
       System.out.println("Kevin Miguel Henriquez Perez\n");
    }
}
