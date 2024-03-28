package com.example.wflbb_zzxcsm.Fragment_zzxcsm;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

import androidx.fragment.app.Fragment;

//import com.example.manzhan_zzxcsm.AboutusActivity_zzxcsm;
//import com.example.manzhan_zzxcsm.EdituserActivity_zzxcsm;
//import com.example.manzhan_zzxcsm.ManzHelpActivity_zzxcsm;
//import com.example.manzhan_zzxcsm.Pager_zzxcsm.OfgoodsActivity_zzxcsm;
//import com.example.manzhan_zzxcsm.R;
//import com.example.manzhan_zzxcsm.SettingActivity_zzxcsm;
import com.example.wflbb_zzxcsm.R;

public class MineFragment_zzxcsm extends Fragment implements View.OnClickListener {

    RelativeLayout bt_edit_user,bt_budget, bt_manzhelp, bt_aboutus, bt_setting;  //编辑资料，我的订单,使用帮助,关于我们,设置

    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_mine_zzxcsm, container, false);

//        bt_edit_user=view.findViewById(R.id.bt_edit_user);
//        bt_budget = view.findViewById(R.id.bt_budget);
//        bt_manzhelp = view.findViewById(R.id.bt_manzhelp);
//        bt_aboutus = view.findViewById(R.id.bt_aboutus);
//        bt_setting = view.findViewById(R.id.bt_setting);
//
//
//        bt_edit_user.setOnClickListener(this);
//        bt_budget.setOnClickListener(this);
//        bt_manzhelp.setOnClickListener(this);
//        bt_aboutus.setOnClickListener(this);
//        bt_setting.setOnClickListener(this);

        return view;
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
//
//            case  R.id.bt_edit_user://编辑资料
//                Intent intent1=new Intent(getContext(), EdituserActivity_zzxcsm.class);
//                startActivity(intent1);
//                break;
//            case R.id.bt_budget://我的订单
//                Intent intent2 = new Intent(getContext(), OfgoodsActivity_zzxcsm.class);
//                startActivity(intent2);
//                break;
//            case R.id.bt_manzhelp://涂鸦展帮助
//                Intent intent3 = new Intent(getContext(), ManzHelpActivity_zzxcsm.class);
//                startActivity(intent3);
//                break;
//            case R.id.bt_aboutus://关于我们
//                Intent intent4 = new Intent(getContext(), AboutusActivity_zzxcsm.class);
//                startActivity(intent4);
//                break;
//            case R.id.bt_setting://设置
//                Intent intent5 = new Intent(getContext(), SettingActivity_zzxcsm.class);
//                startActivity(intent5);
//                break;

        }

    }
}