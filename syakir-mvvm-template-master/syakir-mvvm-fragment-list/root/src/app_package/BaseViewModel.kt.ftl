package ${packageName}
 
import android.app.Application
import androidx.databinding.ObservableList
import androidx.databinding.ObservableArrayList
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.MutableLiveData


class ${className}VM(
    context: Application,
    private val repository: ${className}Repository
    ) : AndroidViewModel(context) {

        val dataListLive: ObservableList<${className}Entry> = ObservableArrayList()
        val openData = SingleLiveEvent<${className}Entry>()
        var showProgress = MutableLiveData<Boolean>()

        fun start(isRefresh: Boolean){
            dataListLive.clear()
            //getData(true)
        }

//    private fun getData(isRefresh: Boolean = false) {
//        showProgress.value = true
//
//        repository.get${className}(
//            isRefresh,
//            object : ${className}DS.GetCallback {
//                override fun onLoaded(entry: List<${className}Entry>) {
//                    dataListLive.clear()
//                    dataListLive.addAll(entry.map {
//                        ${className}Entry(
//                            it.id,
//                            it.niy,
//                            it.nama,
//                            it.jabatan,
//                            it.url_photo,
//                            it.email
//                        )
//                    })
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
//    }

}