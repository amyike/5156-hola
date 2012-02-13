package com.demo.android.bmi;

import java.text.DecimalFormat;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class ReportActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.report);

		findViews();
		setListeners();
		showResult();
	}

	private Button button_back;
	private TextView view_result;
	private TextView view_suggest;

	private void findViews() {
		button_back = (Button) findViewById(R.id.report_back);
		view_result = (TextView) findViewById(R.id.result);
		view_suggest = (TextView) findViewById(R.id.suggest);
	}

	// Listen 4 button clicks
	private void setListeners() {
		button_back.setOnClickListener(backMain);
	}

	private void showResult() {
		//
		DecimalFormat df = new DecimalFormat("0.00");
		try {
			Bundle bundle = this.getIntent().getExtras();
			double height = bundle.getDouble("KEY_HEIGHT") / 100;
			double weight = bundle.getDouble("KEY_WEIGHT");
			double bmi = weight / (height * height);

			// Present result
			view_result.setText(getText(R.string.bmi_result) + df.format(bmi));

			// Give health advice
			if (bmi > 25) {
				showNotification();
				view_suggest.setText(R.string.advice_heavy);
			} else if (bmi < 20) {
				view_suggest.setText(R.string.advice_light);
			} else {
				view_suggest.setText(R.string.advice_average);
			}
			// openOptionsDialog();

		} catch (Exception e) {
			// e.printStackTrace();
			Toast.makeText(this, R.string.input_error, Toast.LENGTH_SHORT)
					.show();
		}
	}

	private OnClickListener backMain = new OnClickListener() {
		public void onClick(View view) {
			// Close this Activity
			ReportActivity.this.finish();
		}
	};

	private void showNotification() {

		NotificationManager barManager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
		Notification barMsg = new Notification(
				android.R.drawable.stat_sys_warning, "哦，你过重了！",
				System.currentTimeMillis());

		PendingIntent contentIntent = PendingIntent.getActivity(this, 0,
				new Intent(this, BmiActivity.class), PendingIntent.FLAG_UPDATE_CURRENT);

		barMsg.setLatestEventInfo(ReportActivity.this, "你的 BMI 值过高", "通知监督人",
				contentIntent);

		barManager.notify(0, barMsg);

	}
}
