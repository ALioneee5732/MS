package com.example.wflbb_zzxcsm.Fragment_zzxcsm;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CalendarView;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.example.wflbb_zzxcsm.R;

import java.util.ArrayList;
import java.util.Calendar;



public class HomeFragment_zzxcsm extends Fragment {

    private CalendarView calendarView;
    private RecyclerView rcv_exhibit;
    private SwipeRefreshLayout swipeRefreshLayout;
    private Button bt_search;
    private int month, year;
//
    private View view;//定义view用来设置fragment的layout
    public RecyclerView mHomeRecyclerView;//定义RecyclerView
    //定义以goodsentity实体类为对象的数据集合
//    private ArrayList<ExhibitsEntity_zzxcsm> exhibitEntityList = new ArrayList<ExhibitsEntity_zzxcsm>();
//    //自定义recyclerveiw的适配器
//    private HomeRecycleAdapter_zzxcsm mHomeRecyclerAdapter;

    public HomeFragment_zzxcsm() {

    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


// 获取当前日期与时间
        Calendar calendar = Calendar.getInstance();
        month = calendar.get(Calendar.MONTH) + 1;
        year = calendar.get(Calendar.YEAR);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {//创建并返回该Fragment对应的视图



        view = inflater.inflate(R.layout.fragment_home_zzxcsm, container, false);
        //在这里可以进行与视图相关的操作，如初始化控件、设置监听器等

        swipeRefreshLayout = view.findViewById(R.id.swipe);
        rcv_exhibit = view.findViewById(R.id.rcv_exhibit);
        calendarView = view.findViewById(R.id.view_calendar);

        //获取fragment的layout
        view = inflater.inflate(R.layout.exhibit_item_zzxcsm, container, false);
        //对recycleview进行配置
        initRecyclerView();
        //模拟数据
        initData();
        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        // your code here
    }

//
//        if (calendarView != null) {
//            // 进行 CalendarView 控件的操作
//        }
//
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
//            calendarView.setDate(System.currentTimeMillis(), false, true);}
//
//
//        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
//            @Override
//            public void onRefresh() {
//                //进行刷新操作
//                //完成后调用setRefreshing(false)结束刷新状态
//                swipeRefreshLayout.setRefreshing(false);
//            }
//        });
//        return view;
//    }

    public void initData() {
//            for (int i=0;i<10;i++){
//                ExhibitsEntity_zzxcsm exhibitsEntity_zzxcsm=new ExhibitsEntity_zzxcsm();
//            exhibitsEntity_zzxcsm.setExname_zzxcsm("模拟标题数据"+i);
//            exhibitsEntity_zzxcsm.setPlace_zzxcsm("65"+i);
//
//                exhibitEntityList.add(exhibitsEntity_zzxcsm);
//
//            }
    }


    public void initRecyclerView() {

            //获取RecyclerView
          mHomeRecyclerView = (RecyclerView) view.findViewById(R.id.rcv_exhibit);
//            //创建adapter
//            mHomeRecyclerAdapter = new HomeRecycleAdapter_zzxcsm(getActivity(), exhibitEntityList);
//            //给RecyclerView设置adapter
//            //显示样式 参数是：上下文、列表方向（横向还是纵向）、是否倒叙
////            mHomeRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false));
//            mHomeRecyclerView.setAdapter(mHomeRecyclerAdapter);
//
//            //设置layoutManager,可以设置显示效果，是线性布局、grid布局，还是瀑布流布局
//            //参数是：上下文、列表方向（横向还是纵向）、是否倒叙
//
//            //设置item的分割线
//            mHomeRecyclerView.addItemDecoration(new DividerItemDecoration(getActivity(), DividerItemDecoration.VERTICAL));
//            //RecyclerView中没有item的监听事件，要在适配器中写一个监听事件的接口。参数根据自定义
//            mHomeRecyclerAdapter.setOnItemClickListener(new HomeRecycleAdapter_zzxcsm.OnItemClickListener()
//            {
//                @Override
//                public void OnItemClick (View view, ExhibitsEntity_zzxcsm data){
//                //此处进行监听事件的业务处理
//                Toast.makeText(getActivity(), "漫展item", Toast.LENGTH_SHORT).show();
//            }
//            });
        }
    }
