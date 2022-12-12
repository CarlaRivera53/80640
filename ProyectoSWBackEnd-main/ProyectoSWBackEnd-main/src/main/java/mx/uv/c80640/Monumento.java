package mx.uv.c80640;

public class Monumento {
    int id;
    String pais;
    String nombre;
    String anioConstruccion;
    String anioInaguracion;
    int altura;
    int largo;
    String materiales;
    public Monumento(int id, String pais, String nombre, String anioConstruccion, String anioInaguracion, int altura,
            int largo, String materiales) {
        this.id = id;
        this.pais = pais;
        this.nombre = nombre;
        this.anioConstruccion = anioConstruccion;
        this.anioInaguracion = anioInaguracion;
        this.altura = altura;
        this.largo = largo;
        this.materiales = materiales;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getPais() {
        return pais;
    }
    public void setPais(String pais) {
        this.pais = pais;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getAnioConstruccion() {
        return anioConstruccion;
    }
    public void setAnioConstruccion(String anioConstruccion) {
        this.anioConstruccion = anioConstruccion;
    }
    public String getAnioInaguracion() {
        return anioInaguracion;
    }
    public void setAnioInaguracion(String anioInaguracion) {
        this.anioInaguracion = anioInaguracion;
    }
    public int getAltura() {
        return altura;
    }
    public void setAltura(int altura) {
        this.altura = altura;
    }
    public int getLargo() {
        return largo;
    }
    public void setLargo(int largo) {
        this.largo = largo;
    }
    public String getMateriales() {
        return materiales;
    }
    public void setMateriales(String materiales) {
        this.materiales = materiales;
    }
    
}
