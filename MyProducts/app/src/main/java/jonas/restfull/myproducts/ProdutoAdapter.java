package jonas.restfull.myproducts;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.io.InputStream;
import java.net.URL;
import java.text.NumberFormat;
import java.util.List;

public class ProdutoAdapter extends RecyclerView.Adapter<ProdutoHolder> {

    private final List<Produto> mProdutos;

    public ProdutoAdapter(List<Produto> mProdutos) {
        this.mProdutos = mProdutos;
    }

    @NonNull
    @Override
    public ProdutoHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new ProdutoHolder(LayoutInflater.from(parent.getContext())
                .inflate(R.layout.produto_item, parent, false));
    }

    @Override
    public void onBindViewHolder(@NonNull ProdutoHolder holder, int position) {
        Produto p = mProdutos.get(position);

        new DownLoadImageTask(holder.ivImagemProduto).execute(p.getImagem());

        holder.tvTituloProduto.setText(p.getTitulo());
        holder.tvTipoProduto.setText(p.getTipo());
        holder.tvOrdemProduto.setText("Ordem - "+p.getOrdem());
        holder.tvValorProduto.setText(NumberFormat.getCurrencyInstance().format(p.getValor()));
    }

    @Override
    public int getItemCount() {
        return mProdutos != null ? mProdutos.size() : 0;
    }


    /**
     * Classe para download assíncrono da imagem do produto
     * */
    private class DownLoadImageTask extends AsyncTask<String,Void,Bitmap> {
        ImageView imageView;

        public DownLoadImageTask(ImageView imageView){
            this.imageView = imageView;
        }

        /*
            doInBackground(Params... params)
                Override this method to perform a computation on a background thread.
         */
        protected Bitmap doInBackground(String...urls){
            String urlOfImage = urls[0];
            Bitmap imgProduto = null;
            try{
                InputStream is = new URL(urlOfImage).openStream();
                /*
                    decodeStream(InputStream is)
                        Decode an input stream into a bitmap.
                 */
                imgProduto = BitmapFactory.decodeStream(is);
            }catch(Exception e){ // Catch the download exception
                e.printStackTrace();
            }
            return imgProduto;
        }

        /*
            onPostExecute(Result result)
                Runs on the UI thread after doInBackground(Params...).
         */
        protected void onPostExecute(Bitmap result){
            imageView.setImageBitmap(result);
        }
    }
}
