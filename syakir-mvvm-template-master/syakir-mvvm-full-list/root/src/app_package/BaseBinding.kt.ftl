package ${packageName}

import android.widget.ImageView
import androidx.databinding.BindingAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions


object ${className}OB {

    @BindingAdapter("app:${className}List")
    @JvmStatic
    fun setDataList(recyclerView: RecyclerView, list: List<${className}Entry>?){
        try{
            with(recyclerView.adapter as ${className}Adapter){
                if(list != null){
                    replaceData(list)
                }
            } 
            }catch (e: Exception) {
            e.printStackTrace()
            }
        }
    

    //@BindingAdapter("app:imageUrl")
    //@JvmStatic
    //fun setImageUrl(view: ImageView, imageUrl: String?) {
    //    Glide.with(view.context)
    //        .load(imageUrl)
    //        .transition(
    //            DrawableTransitionOptions.withCrossFade(500)
    //        )
    //        .into(view)
    //}

}