<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto">

    <data>

        <variable
            name="viewModel"
            type="${packageName}.${className}VM" />

        <variable
            name="datas"
            type="${applicationPackage?replace('.development', '')}.model.${className}Entry" />

        <variable
            name="listener"
            type="${packageName}.${className}UAL" />
    </data>

    <androidx.coordinatorlayout.widget.CoordinatorLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">


        <Button
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="TEST"
            android:layout_gravity="center"
            android:onClick="@{() -> listener.onClickItem(`Replace this! ;)`)}"/>


    </androidx.coordinatorlayout.widget.CoordinatorLayout>

</layout>