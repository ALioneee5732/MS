package com.example.wflbb_zzxcsm;

import android.os.Bundle;
import android.view.MenuItem;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;

import com.example.wflbb_zzxcsm.Fragment_zzxcsm.ChatFragment_zzxcsm;
import com.example.wflbb_zzxcsm.Fragment_zzxcsm.CommunityFragment_zzxcsm;
import com.example.wflbb_zzxcsm.Fragment_zzxcsm.HomeFragment_zzxcsm;
import com.example.wflbb_zzxcsm.Fragment_zzxcsm.MineFragment_zzxcsm;
import com.example.wflbb_zzxcsm.Fragment_zzxcsm.ShopFragment_zzxcsm;
import com.google.android.material.bottomnavigation.BottomNavigationView;

import java.util.List;

public class MenuActivity_zzxcsm extends AppCompatActivity implements BottomNavigationView.OnNavigationItemSelectedListener, ViewPager.OnPageChangeListener{
    private ViewPager viewPager;
    private BottomNavigationView mNavigationView;
    private List<Fragment> fragments;

    ShopFragment_zzxcsm ShopFragment_zzxcsm = new ShopFragment_zzxcsm();
    CommunityFragment_zzxcsm CommunityFragment_zzxcsm = new CommunityFragment_zzxcsm();
    HomeFragment_zzxcsm HomeFragment_zzxcsm = new HomeFragment_zzxcsm();
    ChatFragment_zzxcsm ChatFragment_zzxcsm=new ChatFragment_zzxcsm();
    MineFragment_zzxcsm MineFragment_zzxcsm=new MineFragment_zzxcsm();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_zzxcsm);
        //页面初始化导航栏

        viewPager=findViewById(R.id.viewPager);
        mNavigationView=findViewById(R.id.navigation);

        init();
    }

    private void init() {

        //获取页面标签对象
        viewPager = findViewById(R.id.viewPager);
        viewPager.addOnPageChangeListener(this);
        mNavigationView = findViewById(R.id.navigation);
        mNavigationView.setOnNavigationItemSelectedListener(this);


        //页面切换
        viewPager.setAdapter(new FragmentPagerAdapter(getSupportFragmentManager()) {
            @NonNull
            @Override
            public Fragment getItem(int position) {
                switch (position){
                    case 0:
                        return  ShopFragment_zzxcsm;
                    case 1:
                        return  CommunityFragment_zzxcsm;
                    case 2:
                        return  HomeFragment_zzxcsm;
                    case 3:
                        return  ChatFragment_zzxcsm;
                    case 4:
                        return  MineFragment_zzxcsm;
                }

                return null;
            }

            @Override
            public int getCount() {
                return 5;
            }//返回适配器中的数据项数目
        });
    }

    //实现接口的相关方法  implements上面两个方法后 alt+enter就会弹出这些接口，直接回车实现他们
    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

    }

    @Override
    public void onPageSelected(int position) {
        mNavigationView.getMenu().getItem(position).setChecked(true);
    }

    @Override
    public void onPageScrollStateChanged(int state) {

    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        viewPager.setCurrentItem(menuItem.getOrder());
        return true;
    }
}
