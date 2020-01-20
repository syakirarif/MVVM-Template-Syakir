package ${packageName}
 
import android.app.Application
import androidx.databinding.ObservableField
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.MutableLiveData


class ${className}VM(
    context: Application,
    private val repository: ${className}Repository
    ) : AndroidViewModel(context) {

        val entries: ObservableField<${className}Entry> = ObservableField()
        var showProgress = MutableLiveData<Boolean>()

        fun start(nama: String){
            get${className}(nama, true)
        }

    private fun get${className}(nama: String, isRefresh: Boolean = false) {
        showProgress.value = true
//
//        repository.get${className}(
//            isRefresh,
//            nama,
//            object : ${className}DS.GetCallback {
//                override fun onLoaded(entry: ${className}Entry) {
//                    entries.set(entry)
//                    showProgress.value = false
//                }
//
//                override fun onError(errorMessage: String?) {
//                    showProgress.value = false
//                }
//
//                override fun onFinished() {
//                    showProgress.value = false
//                }
//
//            }
//        )
    }

}