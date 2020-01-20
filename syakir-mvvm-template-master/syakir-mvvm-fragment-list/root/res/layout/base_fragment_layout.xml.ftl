<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto">

    <data>

        <import type="android.view.View"/>

        <variable
            name="viewModel"
            type="${packageName}.${className}VM" />
        
    </data>

    <RelativeLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <androidx.recyclerview.widget.RecyclerView
            android:id="@+id/rv_${fragmentLayoutName}"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:dataList="@{viewModel.dataListLive}" />

            <ProgressBar
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_centerInParent="true"
                android:id="@+id/pb_${fragmentLayoutName}"
                android:visibility="@{viewModel.showProgress ? View.VISIBLE : View.GONE}"/>

    </RelativeLayout>
</layout>