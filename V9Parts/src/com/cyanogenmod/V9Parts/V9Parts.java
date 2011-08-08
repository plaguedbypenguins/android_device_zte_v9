package com.cyanogenmod.V9Parts;

import com.cyanogenmod.V9Parts.R;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class V9Parts extends PreferenceActivity {

   private void writeValue(String parameter, int value) {
      try {
          FileOutputStream fos = new FileOutputStream(new File("/sys/module/msm_ts/parameters/tscal_" + parameter));
          fos.write(String.valueOf(value).getBytes());
          fos.flush();
          fos.getFD().sync();
          fos.close();
      } catch (FileNotFoundException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }
   }

   @Override
   public void onCreate(Bundle savedInstanceState) {
       super.onCreate(savedInstanceState);
       addPreferencesFromResource(R.xml.v9parts);
   }

   @Override
   public void onPause() {
      super.onPause();
      SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getBaseContext());
      writeValue("gesture_pressure", Integer.parseInt(prefs.getString("gesture_pressure", "1200")));
      writeValue("gesture_blindspot", Integer.parseInt(prefs.getString("gesture_blindspot", "100")));
   }

}
