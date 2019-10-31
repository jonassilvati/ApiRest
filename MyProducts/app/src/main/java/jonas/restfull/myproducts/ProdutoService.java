package jonas.restfull.myproducts;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface ProdutoService {

    @GET("produto/show")
    Call<List<Produto>> getProdutos();

    @GET("produto/show/{id}")
    Call<Produto> getProduto(@Path("id") int id);
}
