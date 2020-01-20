package ${packageName}

import android.annotation.SuppressLint
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.schedulers.Schedulers

object ${className}RDS : ${className}DS {

    private val apiService = ${className}ApiService.invoke()

    @SuppressLint("CheckResult")
    override fun get${className}(
        isRefresh: Boolean,
        callback: ${className}DS.GetCallback
    ) {
        apiService.get${className}()
            .observeOn(AndroidSchedulers.mainThread())
            .subscribeOn(Schedulers.io())
            .subscribe({ results ->
                run {
                    if (results.info!!.equals(null)) {
                        callback.onFinished()
                    } else {
                        callback.onLoaded(results.info!!)
                    }
                }
            }, { error ->
                callback.onError(error.message)
            })
    }

    override fun save${className}(entry: ${className}Entry) {

    }
}