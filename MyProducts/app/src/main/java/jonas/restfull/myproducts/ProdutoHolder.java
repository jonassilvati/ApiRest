package jonas.restfull.myproducts;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

public class ProdutoHolder extends RecyclerView.ViewHolder {

    public ImageView ivImagemProduto;
    public TextView tvTituloProduto;
    public TextView tvValorProduto;
    public TextView tvOrdemProduto;
    public TextView tvTipoProduto;

    public ProdutoHolder(View produtoView){
        super(produtoView);
        ivImagemProduto = produtoView.findViewById(R.id.ivImagemProduto);
        tvTituloProduto = produtoView.findViewById(R.id.tvTituloProduto);
        tvValorProduto  = produtoView.findViewById(R.id.tvValorProduto);
        tvOrdemProduto  = produtoView.findViewById(R.id.tvOrdemProduto);
        tvTipoProduto   = produtoView.findViewById(R.id.tvTipoProduto);
    }

}
