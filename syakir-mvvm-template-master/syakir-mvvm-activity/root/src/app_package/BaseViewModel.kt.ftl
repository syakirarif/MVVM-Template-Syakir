package ${packageName}
 
import android.app.Application
import androidx.databinding.ObservableField
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.MutableLiveData
import ${applicationPackage?replace('.development', '')}.model.${className}Entry


class ${className}VM(
    context: Application,
    private val repository: ${className}Repository
    ) : AndroidViewModel(context) {

        val entry: ObservableField<${className}Entry> = ObservableField()
        var showProgress = MutableLiveData<Boolean>()

        fun start(){
            //getInfo(namaFakultas, true)
        }

//    private fun getInfo(namaFakultas: String, isRefresh: Boolean = false) {
//        showProgress.value = true
//
//        repository.getFakultasInfo(
//            isRefresh,
//            namaFakultas,
//            object : FakultasInfoDataSource.GetFakultasInfoCallback {
//                override fun onLoaded(entry: FakultasInfoEntry) {
//                    infoListLive.set(entry)
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