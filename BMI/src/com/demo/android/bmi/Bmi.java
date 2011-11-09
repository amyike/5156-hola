package com.demo.android.bmi;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class Bmi extends Activity {
	private static final String TAG = "Bmi";
	static final String[] FEETS = { "2 Feet", "3 Feet", "4 Feet", "5 Feet",
			"6 Feet", "7 Feet", "8 Feet" };

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		Log.v(TAG, "onCreate");
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);

		findViews();
		setListeners();

		restorePrefs();
	}

	@Override
	protected void onStart() {
		Log.v(TAG, "onStart");
		super.onStart();
	}

	@Override
	protected void onStop() {
		Log.v(TAG, "onStop");
		super.onStop();
	}

	@Override
	protected void onRestart() {
		Log.v(TAG, "onRestart");
		super.onRestart();
	}

	@Override
	protected void onResume() {
		Log.v(TAG, "onResume");
		super.onResume();
	}

	@Override
	protected void onPause() {
		Log.v(TAG, "onPause");
		super.onPause();

		savePrefs();
	}

	@Override
	protected void onDestroy() {
		Log.v(TAG, "onDestroy");
		super.onDestroy();
	}

	private Button button_calc;
	private EditText field_weight;
	private Spinner field_feet;
	private Spinner field_inch;

	private void findViews() {

		button_calc = (Button) findViewById(R.id.submit);
		field_feet = (Spinner) findViewById(R.id.feet);
		field_inch = (Spinner) findViewById(R.id.inch);
		field_weight = (EditText) findViewById(R.id.weight);

		ArrayAdapter<CharSequence> adapter_feet = ArrayAdapter
				.createFromResource(this, R.array.feets,
						android.R.layout.simple_spinner_item);
		adapter_feet
				.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		field_feet.setAdapter(adapter_feet);

		ArrayAdapter<CharSequence> adapter_inch = ArrayAdapter
				.createFromResource(this, R.array.inches,
						android.R.layout.simple_spinner_item);
		adapter_inch
				.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		field_inch.setAdapter(adapter_inch);

	}

	// Listen 4 button clicks
	private void setListeners() {
		button_calc.setOnClickListener(calcBMI);
		field_feet.setOnItemSelectedListener(getFeet);
		field_inch.setOnItemSelectedListener(getInch);
	}

	private int feet = 0;
	private int inch = 0;
	private OnItemSelectedListener getFeet = new OnItemSelectedListener() {

		public void onItemSelected(AdapterView<?> adapterview, View view,
				int i, long l) {
			feet = adapterview.getSelectedItemPosition() + 2;
			Toast.makeText(Bmi.this, feet + "", Toast.LENGTH_SHORT).show();
		}

		public void onNothingSelected(AdapterView<?> adapterview) {
		}
	};

	private OnItemSelectedListener getInch = new OnItemSelectedListener() {

		public void onItemSelected(AdapterView<?> adapterview, View view,
				int i, long l) {
			inch = adapterview.getSelectedItemPosition();
		}

		public void onNothingSelected(AdapterView<?> adapterview) {
		}
	};

	private OnClickListener calcBMI = new OnClickListener() {

		public void onClick(View v) {
			Intent intent = new Intent();
			intent.setClass(Bmi.this, Report.class);
			Bundle bundle = new Bundle();
			bundle.putDouble("KEY_HEIGHT", (feet * 12 + inch) * 2.54 / 100);//
			bundle.putDouble("KEY_WEIGHT",
					Double.parseDouble(field_weight.getText().toString()));
			intent.putExtras(bundle);
			startActivity(intent);
		}
	};

	private void openOptionsDialog() {

		new AlertDialog.Builder(Bmi.this)
				.setTitle(R.string.about_title)
				.setMessage(R.string.about_msg)
				.setPositiveButton(R.string.ok_lable,
						new DialogInterface.OnClickListener() {

							public void onClick(DialogInterface dialog,
									int which) {

							}
						})
				.setNeutralButton("OO", new DialogInterface.OnClickListener() {

					public void onClick(DialogInterface dialog, int which) {

					}
				})
				.setNegativeButton(R.string.homepage_lable,
						new DialogInterface.OnClickListener() {

							public void onClick(DialogInterface dialog,
									int which) {
								// go to url
								Uri uri = Uri
										.parse(getString(R.string.homepage_uri));
								Intent intent = new Intent(Intent.ACTION_VIEW,
										uri);
								startActivity(intent);
							}
						}).show();

		/*
		 * Toast.makeText(BMIActivity.this, R.string.about_title,
		 * Toast.LENGTH_SHORT).show();
		 */
	}

	protected static final int MENU_ABOUT = Menu.FIRST;
	protected static final int MENU_QUIT = Menu.FIRST + 1;

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(0, MENU_ABOUT, 0, "¹ØÓÚ...").setIcon(
				android.R.drawable.ic_menu_help);
		menu.add(0, MENU_QUIT, 0, "½áÊø").setIcon(
				android.R.drawable.ic_menu_close_clear_cancel);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case MENU_ABOUT:
			openOptionsDialog();
			break;
		case MENU_QUIT:
			finish();
			break;
		}
		return super.onOptionsItemSelected(item);
	}

	private static final String PREF = "BMI_PREF";
	private static final String PREF_FEET = "BMI_FEET";
	private static final String PREF_INCH = "BMI_INCH";

	// Restore preferences
	private void restorePrefs() {
		SharedPreferences settings = getSharedPreferences(PREF, 0);
		int pref_feet = settings.getInt(PREF_FEET, 5);
		field_feet.setSelection(pref_feet);// set field
		int pref_inch = settings.getInt(PREF_INCH, 5);
		field_inch.setSelection(pref_inch);
		field_weight.requestFocus();
	}

	// Save user preferences. use Editor object 2 make changes.
	private void savePrefs() {
		SharedPreferences settings = getSharedPreferences(PREF, 0);
		settings.edit().putInt(PREF_FEET, field_feet.getSelectedItemPosition())
				.putInt(PREF_INCH, field_inch.getSelectedItemPosition())
				.commit();
	}
}