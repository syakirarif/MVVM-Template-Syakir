package ${packageName}

interface ${className}DS{

    fun get${className}(
        isRefresh: Boolean = false,
        callback: GetCallback
    )

    fun save${className}(entry: List<${className}Entry>)

    interface GetCallback {
        fun onLoaded(entry: List<${className}Entry>)
        fun onError(errorMessage: String?)
        fun onFinished()
    }
}