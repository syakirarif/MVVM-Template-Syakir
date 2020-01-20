package ${packageName}

interface ${className}DS{

    fun get${className}(
        isRefresh: Boolean = false,
        callback: GetCallback
    )

    fun save${className}(entry: ${className}Entry)

    interface GetCallback {
        fun onLoaded(entry: ${className}Entry)
        fun onError(errorMessage: String?)
        fun onFinished()
    }
}