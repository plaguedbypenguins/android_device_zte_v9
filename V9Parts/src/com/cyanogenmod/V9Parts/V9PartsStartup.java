package com.cyanogenmod.V9Parts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class V9PartsStartup extends BroadcastReceiver
{
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
   public void onReceive(final Context context, final Intent bootintent) {
      // Here we write calibration values to /sys/module/msm_ts/parameters/
      writeValue("xoffset",-1703937);
      writeValue("yoffset",1);
      writeValue("xscale",34876);
      writeValue("yscale",58126);
   }
}
