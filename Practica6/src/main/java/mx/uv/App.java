package mx.uv;
import static spark.Spark.*;
/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        get("/hello", (req, res) -> "Hello World");
        get(patch: "/hello" , (req,res)-> "hello work");
        get(path:"/Alex" , (req,res)-> "hello Alex");
        get(path:"/Eduardo" , (req,res)-> "hello Eduardo");
        get(path: "/Brandon " , (req,res)-> "hello Brandon");
        get(path:"/" , (req,res)-> "<h1> Bienvenidos</h1> <img src=https://images.losandes.com.ar/resizer/bF9c9sLngGJfi6nzmCMZSO2nM6M=/1200x630/smart/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/JQXBFVYC55BAFEWT4K5BYPMJJM.jpeg");
        get(path:"/" , (req,res)->"hola");
        
        post(path: "/", (req,res)-> {
            System.out.println(req.queryParams(queryParams:"email")+" " +req.queryParams(queryParams:))
            System

        });


    }
}
