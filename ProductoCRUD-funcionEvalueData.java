   public static int EvalueData(){
        int enc = 0, id = 0, pos=0;
        Scanner leer = new Scanner(System.in);
        ProductoDAO productoDAO = new ProductoDAO();
        List<Producto> productosDAO = productoDAO.select();
        do{
            id=0;
            pos=0;
            Line();
            //System.out.println(">>> MODIFICANDO DATOS <<<");
            System.out.println("Ingrese el identificador (id), para salir -> '0':");
            System.out.println(":>");
            id = leer.nextInt();
            if(id == 0){break;}
            System.out.println("\t\t\t\t\tBuscando identificador...\n");
            for(Producto producto:productosDAO){
                if(id != producto.getIdProducto()){
                    enc  = 0;
                }
                else{
                    enc = 1;
                    break;
                }
                pos++;
            }
            if(id<0){
                System.out.println(">>> Error: No existen identificadores negativos! " + "->" + " ["+ id +"]");
            }
            else if(enc == 0){
                System.out.println("Este identificador [" + id + "] no existe en la base de datos o fue eliminado!");
            }
            else if(enc == 1){
                System.out.println("*** ID = [" + id + "] Encontrado! ***");
                System.out.println("Datos:\n" + productosDAO.get(pos));
            }
            Line();
        }while(enc != 1 || id == 0);
        return id;
    }
