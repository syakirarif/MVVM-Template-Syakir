package ${packageName}

import androidx.annotation.VisibleForTesting
import ${applicationPackage?replace('.development', '')}.util.dbhelper.AppExecutors

class ${className}LDS private constructor(
    val appExecutors: AppExecutors,
    val dataDao: ${className}Dao
) : ${className}DS {
    override fun get${className}(
        isRefresh: Boolean,
        callback: ${className}DS.GetCallback
    ) {
        appExecutors.diskIO.execute {
            val getDao = dataDao.get${className}()

            appExecutors.mainThread.execute {
                if (getDao.equals(null)) {
                    callback.onError("Data kosong")
                } else {
                    callback.onLoaded(getDao)
                }
            }
        }
    }

    override fun save${className}(entry: List<${className}Entry>) {
        dataDao.clearTable${className}()

        for (model in entry) {
            dataDao.insert${className}(model)
        }

    }

    companion object {
        private var INSTANCE: ${className}LDS? = null

        @JvmStatic
        fun getInstance(appExecutors: AppExecutors, dataDao: ${className}Dao): ${className}LDS {
            if (INSTANCE == null) {
                synchronized(${className}LDS::javaClass) {
                    INSTANCE = ${className}LDS(appExecutors, dataDao)
                }
            }
            return INSTANCE!!
        }

        @VisibleForTesting
        fun clearInstance() {
            INSTANCE = null
        }
    }
}