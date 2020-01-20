package ${packageName}

class ${className}Repository(
    val remoteDataSource: ${className}DS,
    val localDataSource: ${className}DS
) : ${className}DS {
    override fun get${className}(
        isRefresh: Boolean,
        callback: ${className}DS.GetCallback
    ) {
        if (!isRefresh)
            localDataSource.get${className}(callback = callback)

        getRemoteDataSource(isRefresh, callback)
    }

    override fun save${className}(entry: ${className}Entry) {
        localDataSource.save${className}(entry)
    }

    private fun getRemoteDataSource(
        isRefresh: Boolean,
        callback: ${className}DS.GetCallback
    ) {
        remoteDataSource.get${className}(
            isRefresh,
            namaFakultas,
            object : ${className}DS.GetCallback {
                override fun onLoaded(entry: ${className}Entry) {
                    save${className}(entry)
                    localDataSource.get${className}(false, callback)
                }

                override fun onError(errorMessage: String?) {
                    callback.onError(errorMessage)
                }

                override fun onFinished() {
                    callback.onFinished()
                }

            }
        )
    }

    companion object {

        private var INSTANCE: ${className}Repository? = null

        @JvmStatic
        fun getInstance(remoteDataSource: ${className}DS, localDataSource: ${className}DS) =
            INSTANCE ?: synchronized(${className}Repository::class.java) {
                INSTANCE ?: ${className}Repository(remoteDataSource, localDataSource)
                    .also { INSTANCE = it }
            }

        @JvmStatic
        fun destroyInstance() {
            INSTANCE = null
        }
    }
}