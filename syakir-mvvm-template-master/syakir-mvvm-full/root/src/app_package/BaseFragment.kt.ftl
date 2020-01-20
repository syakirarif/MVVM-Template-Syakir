package ${packageName}


import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage?replace('.development', '')}.R
import ${applicationPackage?replace('.development', '')}.databinding.${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding


class ${className}Fragment : Fragment(), ${className}UAL {    

    private lateinit var viewBinding: ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding

    override fun onCreateView(
        inflater: LayoutInflater, 
        container: ViewGroup?,
        savedInstanceState: Bundle?
        ): View {
			
            viewBinding = ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding.inflate(
                inflater, container, false
            ).apply{
                viewModel = (activity as ${className}Activity).obtains${className}ViewModel()
            }

            viewBinding.let{
                it.viewModel = viewBinding.viewModel
                it.setLifecycleOwner(this@${className}Fragment)
            }

          	return viewBinding.root
    }

        override fun onResume() {
        super.onResume()

        viewBinding.viewModel?.start()
    }

    override fun onClickItem(entry: TesSatuEntry) {
        
    }


    companion object {
        fun newInstance() = ${className}Fragment().apply {

        }

    }

}
