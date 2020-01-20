package ${packageName}

import android.app.Application
import androidx.annotation.VisibleForTesting
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import ${applicationPackage?replace('.development', '')}.util.Injection
import ${applicationPackage?replace('.development', '')}.service.repository.${className}Repository

class ${className}VMF(
    private val application: Application,
    private val repository: ${className}Repository
) : ViewModelProvider.NewInstanceFactory() {
@Suppress("UNCHECKED_CAST")
    override fun <T : ViewModel?> create(modelClass: Class<T>) =
        with(modelClass) {
            when {
                isAssignableFrom(${className}VM::class.java) ->
                    ${className}VM(application, repository)
                else ->
                    throw IllegalArgumentException("Unknown ViewModel class: ${className}")
            } as T
        }

    companion object {
        @Volatile
        private var INSTANCE: ${className}VMF? = null

        fun getInstance(application: Application) =
            INSTANCE ?: ${className}VMF(
                application,
                Injection.provide${className}Repository(application.applicationContext)

            ).also { INSTANCE = it }
    }

    @VisibleForTesting
    fun destroyInstance() {
        INSTANCE = null
    }
}
