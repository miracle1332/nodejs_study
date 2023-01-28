package com.ohr.miltiactivity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class ResultActivity extends AppCompatActivity {
    Button btnReturn;
    TextView tvResult;
    int kor, eng, tot, avg;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
        btnReturn=findViewById(R.id.btnReturn);
        tvResult=findViewById(R.id.tvResult);
        Intent gintent=getIntent();
        kor=gintent.getIntExtra("korScore", 0);
        eng=gintent.getIntExtra("engScore",0);
        tot=kor+eng;
        avg=tot/2;
        tvResult.setText("**성적결과**\n국어 : " + kor + "\n영어 : " + eng+ "\n총점 : " +
                tot + "\n평균 : " + avg);
        //메인으로 돌아가기 버튼 작업
        btnReturn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });



    }
}