package com.example.wflbb_zzxcsm.Pager_zzxcsm;

import android.content.Context;
import android.util.AttributeSet;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;

public class FixedViewPager_zzxcsm extends ViewPager {
    public FixedViewPager_zzxcsm(@NonNull Context context){
        super(context);
    }
    public FixedViewPager_zzxcsm(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }
    @Override
    public void setCurrentItem(int item) {
        super.setCurrentItem(item,false);
    }
}