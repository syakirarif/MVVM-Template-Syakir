package ${packageName}

import ${applicationPackage?replace('.development', '')}.model.${className}Entry

 
interface ${className}UAL {

    fun onClickItem(entry: ${className}Entry)

}