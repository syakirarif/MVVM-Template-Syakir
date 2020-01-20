package ${packageName}

import android.content.Context
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import ${applicationPackage?replace('.development', '')}.R
import ${applicationPackage?replace('.development', '')}.model.${className}Entry
import ${applicationPackage?replace('.development', '')}.util.obtain${className}ViewModel
import ${applicationPackage?replace('.development', '')}.util.replaceFragmentInActivity


class ${className}Activity : AppCompatActivity() {

    private lateinit var viewModelInfo: ${className}VM

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
        setupFragment()
        setupViewModel()
    }

    private fun setupFragment() {
        supportFragmentManager.findFragmentById(R.id.frame_${layoutName})
        ${className}Fragment.newInstance().let {
            replaceFragmentInActivity(it, R.id.frame_${layoutName})
        }
    }

    private fun setupViewModel() {

        viewModelInfo = obtains${className}ViewModel().apply {

        }
    }

    fun obtains${className}ViewModel(): ${className}VM =
        obtain${className}ViewModel(${className}VM::class.java)


    companion object {
        fun getLaunchIntent(from: Context) = Intent(from, ${className}Activity::class.java).apply {
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
        }
    }
}
