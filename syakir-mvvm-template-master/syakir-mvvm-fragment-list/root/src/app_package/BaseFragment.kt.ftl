package ${packageName}


import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.GridLayoutManager
import ${applicationPackage?replace('.development', '')}.databinding.${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding


class ${className}Fragment : Fragment() {    

    private lateinit var adapter: ${className}Adapter
    private lateinit var viewBinding: ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding

    override fun onCreateView(
        inflater: LayoutInflater, 
        container: ViewGroup?,
        savedInstanceState: Bundle?
        ): View? {
			
            viewBinding = ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding.inflate(
                inflater, container, false
            ).apply{
                viewModel = (activity as ${className}Activity).obtains${className}VM()
            }

            viewBinding.let{
                it.viewModel = viewBinding.viewModel
                it.setLifecycleOwner(this@${className}Fragment)
            }

            viewBinding.root.rv_${fragmentLayoutName}.apply {
            layoutManager = GridLayoutManager(this@${className}Fragment.context, 2)
        }

          	return viewBinding.root
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

        setupViewModel()
    }

    private fun setupViewModel() {
        val viewModel = viewBinding.viewModel

        if (viewModel != null) {
            adapter = ${className}Adapter(ArrayList(), viewModel)
            viewBinding.rv${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}.adapter = adapter
        }
    }

        override fun onResume() {
        super.onResume()

        viewBinding.viewModel?.start()
    }

    companion object {
        fun newInstance() = ${className}Fragment().apply {

        }

    }

}
