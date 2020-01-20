<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">

    <data>

        <variable
            name="datas"
            type="${packageName}.${className}Entry" />

        <variable
            name="action"
            type="${packageName}.${className}UAL" />

    </data>

    <RelativeLayout android:layout_width="match_parent"
                    android:layout_height="wrap_content">

        <androidx.cardview.widget.CardView
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                app:cardElevation="3dp"
                app:cardCornerRadius="6dp"
                android:onClick="@{() -> action.onClickItem(datas)}"
                app:cardUseCompatPadding="true">

            <LinearLayout
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:layout_margin="4dp"
                    android:orientation="vertical">

                <ImageView
                        android:id="@+id/img_${itemLayoutName}"
                        android:layout_width="match_parent"
                        android:contentDescription="just image"
                        app:imageUrl="@{datas.url_photo}"
                        android:layout_height="180dp"/>

                <TextView
                        android:id="@+id/tv_${itemLayoutName}"
                        android:layout_width="match_parent"
                        android:layout_height="match_parent"
                        android:gravity="center_horizontal"
                        android:textSize="16sp"
                        android:text="@{datas.nama}"
                        android:textColor="@color/textPrimary"
                        tools:text="@string/lorem_ipsum"/>
                <TextView
                        android:id="@+id/tv2_${itemLayoutName}"
                        android:layout_width="match_parent"
                        android:layout_height="match_parent"
                        android:gravity="center"
                        android:textSize="12sp"
                        android:lines="2"
                        android:text="@{datas.jabatan}"
                        android:textColor="@color/textPrimary"
                        tools:text="@string/lorem_ipsum"/>


            </LinearLayout>

        </androidx.cardview.widget.CardView>

    </RelativeLayout>

</layout>