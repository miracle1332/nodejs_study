package com.ohr.miltiactivity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    EditText edtKor, edtEng;
    Button btnActResult;
    int kor, eng;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        edtKor=findViewById(R.id.edtKor);
        edtEng=findViewById(R.id.edtEng);
        btnActResult=findViewById(R.id.btnActResult);
        //결과 보기 버튼 작업
        btnActResult.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                kor=Integer.parseInt(edtKor.getText().toString());
                eng=Integer.parseInt(edtEng.getText().toString());
                Intent intent=new Intent(getApplicationContext(), ResultActivity.class);
                intent.putExtra("korScore",kor);
                intent.putExtra("engScore",eng);
                startActivity(intent);

            }
        });

    }
}