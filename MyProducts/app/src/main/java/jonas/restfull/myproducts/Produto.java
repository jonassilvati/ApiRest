package jonas.restfull.myproducts;

import androidx.annotation.NonNull;

public class Produto {
    private int id;
    private String titulo;
    private double valor;
    private String imagem;
    private String ordem;
    private String tipo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public String getOrdem() {
        return ordem;
    }

    public void setOrdem(String ordem) {
        this.ordem = ordem;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @NonNull
    @Override
    public String toString() {
        return "id: " + getId()
                +"\nTitulo: "+getTitulo()
                +"\nImagem: "+getImagem()
                +"\nValor: "+getValor()
                +"\nOrdem: "+getOrdem()
                +"\nTipo: "+getTipo();
    }
}
