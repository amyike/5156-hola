package com.yk.hola;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		findViews();
		setListeners();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

	private Button btnSubmit;// 提交
	private Button btnHome;// 主页
	private EditText editTextEmail;// 主页

	private void findViews() {
		btnSubmit = (Button) findViewById(R.id.btn_home);
		btnHome = (Button) findViewById(R.id.btn_home);
		editTextEmail = (EditText) findViewById(R.id.editTxtEmail);
	}

	// private OnClickListener backMain = new OnClickListener() {
	// public void onClick(View view) {
	// // Close this Activity
	// MainActivity.this.finish();
	// }
	// };

	private void setListeners() {

		btnHome.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				MainActivity.this.finish();
			}
		});

		btnSubmit.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {

			}
		});

		editTextEmail.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {

			}
		});
	}
}
