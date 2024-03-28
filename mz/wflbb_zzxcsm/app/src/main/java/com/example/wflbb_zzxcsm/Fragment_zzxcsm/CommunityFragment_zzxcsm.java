package com.example.wflbb_zzxcsm.Fragment_zzxcsm;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

//import com.example.manzhan_zzxcsm.Adapter_zzxcsm.CommunityAdapter_zzxcsm;
//import com.example.manzhan_zzxcsm.Dao_zzxcsm.Post_zzxcsm;
//import com.example.manzhan_zzxcsm.Dao_zzxcsm.User_zzxcsm;
//import com.example.manzhan_zzxcsm.R;
import com.example.wflbb_zzxcsm.R;

import java.util.List;

//import cn.bmob.v3.Bmob;
//import cn.bmob.v3.BmobQuery;
//import cn.bmob.v3.BmobUser;
//import cn.bmob.v3.exception.BmobException;
//import cn.bmob.v3.listener.FindListener;
//import cn.bmob.v3.listener.QueryListener;


public class CommunityFragment_zzxcsm extends Fragment {
    private RecyclerView recyclerView;
    private SwipeRefreshLayout srlayout;
    private TextView HelloCommunity;
    private TextView load_user, hy;

//    private List<Post_zzxcsm> data;
//
//
//    private CommunityAdapter_zzxcsm communityAdapter_zzxcsm;


    @Nullable
    @Override
    public View onCreateView(@Nullable LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        //在这里可以进行与视图相关的操作，如初始化控件、设置监听器等
        return inflater.inflate(R.layout.fragment_community_zzxcsm, container, false);
    }

    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);

//        //逻辑处理
//        initView();
////        initData();//加载数据
//
//        Bmob.initialize(getActivity(),"deace92509542a2cfef490c246544c8e");//密 初始化
//
//
//        //初始刷新
//        Refresh();

        srlayout.setColorSchemeResources(android.R.color.holo_green_light, android.R.color.holo_red_light, android.R.color.holo_blue_light);
        srlayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {//设置下拉刷新操作的监听器
            @Override
            public void onRefresh() {
                //刷新
//                Refresh();//调用方法

            }
        });

//        //load加载 。。。欢迎你
//        User_zzxcsm bu=BmobUser.getCurrentUser(User_zzxcsm.class);//BmobUser bu
//        String userid=bu.getUid_zzxcsm();
//        BmobQuery<User_zzxcsm> us=new BmobQuery<>();//查询
//        us.getObject(userid, new QueryListener<User_zzxcsm>() {
//            @Override
//            public void done(User_zzxcsm user, BmobException e) {
//                if(e==null){
//                    load_user.setText(user.getNickname_zzxcsm());
//
//                }else {
//                    load_user.setText("次元菌加载失败TT");
//                    hy.setText(" ");
//                }
//            }
//        });
//
//    }
//
//    private void Refresh() {
//        BmobQuery<Post_zzxcsm> po_zzxcsm=new BmobQuery<Post_zzxcsm>();
//        po_zzxcsm.order("-createdAt");//使用方法对查询结果 根据数据的创建时间进行逆向排序
//        po_zzxcsm.setLimit(1000);//查询结果最多返回1000条记录
//        po_zzxcsm.findObjects(new FindListener<Post_zzxcsm>() {//调用findObjects()方法发起查询 通过FindListener来获取查询结果
//            @Override
//            public void done(List<Post_zzxcsm> list, BmobException e) {//在FindListener的done()方法中处理查询结果
//                srlayout.setRefreshing(false);
//
//                if (e==null){
//                    //查询成功
//                    data=list;//则将查询结果存储于名为 data 的列表中
//                    communityAdapter_zzxcsm=new CommunityAdapter_zzxcsm(getActivity(),data);//上下文 data
//                    recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
//                    recyclerView.setAdapter(communityAdapter_zzxcsm);
////然后使用该数据创建一个CommunityAdapter_zzxcsm 对象 并将其设置为 RecyclerView 的适配器（用于显示数据列表）
//                }else{
//                    srlayout.setRefreshing(false);
//                    Toast.makeText(getActivity(),"次元菌获取数据失败TT"+e,Toast.LENGTH_SHORT).show();
//                }
//            }
//        });
//    }
//

//        private void initView () {
//            recyclerView = getActivity().findViewById(R.id.com_rcyv);
//            srlayout = getActivity().findViewById(R.id.com_swipe);
//            HelloCommunity = getActivity().findViewById(R.id.HelloCommunity);
//            load_user = getActivity().findViewById(R.id.load_user);
//            hy = getActivity().findViewById(R.id.hy);
//        }
    }
}