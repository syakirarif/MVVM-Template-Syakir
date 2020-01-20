<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto">

    <data>

        <variable
            name="viewModel"
            type="${packageName}.${className}VM" />

        <variable
            name="datas"
            type="${packageName}.${className}Entry" />

        <variable
            name="action"
            type="${packageName}.${className}UAL" />
        
    </data>

    <androidx.core.widget.NestedScrollView
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:fillViewport="true"
            app:layout_behavior="com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior">

        <LinearLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:orientation="vertical">

            <TextView
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:textSize="16sp"
                    tools:text="@string/lorem_ipsum"
                    android:text="@{viewModel.entries.email}"/>

            <TextView
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:textSize="16sp"
                    android:layout_marginTop="16dp"
                    tools:text="@string/lorem_ipsum"
                    android:text="@{viewModel.entries.url_website}"/>

            <TextView
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:textSize="16sp"
                    android:layout_marginTop="16dp"
                    tools:text="@string/lorem_ipsum"
                    android:text="@{viewModel.entries.alamat}"/>

        </LinearLayout>
    </androidx.core.widget.NestedScrollView>
</layout>