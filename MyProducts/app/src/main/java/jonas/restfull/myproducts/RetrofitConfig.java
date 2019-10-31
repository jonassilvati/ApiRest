package jonas.restfull.myproducts;

import retrofit2.Retrofit;
import retrofit2.converter.jackson.JacksonConverterFactory;

public class RetrofitConfig {

    private final Retrofit retrofit;

    public RetrofitConfig(){
        this.retrofit = new Retrofit
                .Builder()
                .baseUrl("http://fetram.com.br/api/v1/")
                .addConverterFactory(JacksonConverterFactory.create())
                .build();
    }

    public ProdutoService getProdutoService(){
        return this.retrofit.create(ProdutoService.class);
    }

}
