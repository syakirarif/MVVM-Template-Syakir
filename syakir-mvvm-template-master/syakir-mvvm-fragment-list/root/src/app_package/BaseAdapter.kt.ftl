package ${packageName}

import android.view.ViewGroup
import android.view.LayoutInflater
import androidx.databinding.DataBindingUtil
import androidx.recyclerview.widget.RecyclerView
import ${applicationPackage?replace('.development', '')}.databinding.${itemLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding
import ${applicationPackage?replace('.development', '')}.R

class ${className}Adapter(
    var mList: List<${className}Entry>, 
    val mViewModel: ${className}VM
) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        val binding : ${itemLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding = DataBindingUtil.inflate(
            LayoutInflater.from(parent.context), 
            R.layout.${itemLayoutName},
            parent, 
            false
            )

        return ${className}Holder(binding)
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        val datas = mList[position]

        val actionListener = object : ${className}UAL {
//            override fun onProdiClicked(entry: FakultasProdiEntry) {
//                mViewModel.openData.value = entry
//            }
        }
        
        (holder as ${className}Holder).bind(mList[position], actionListener)
    }

    
    override fun getItemCount(): Int {
        return mList.size
    }


    fun replaceData(data: List<${className}Entry>) {
        mList = data
        notifyDataSetChanged()
    }


    class ${className}Holder(binding: ${itemLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding) : 
    RecyclerView.ViewHolder(binding.root) {

        val mBinding = binding        

        fun bind(data: ${className}Entry, listener: ${className}UAL) {
            mBinding.datas = data
            mBinding.action = listener
            mBinding.executePendingBindings()
        }

    }

}