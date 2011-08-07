package com.cyanogenmod.V9Parts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class V9PartsStartup extends BroadcastReceiver
{
    private static final String TAG = "V9PartsStartup";
    @Override
    public void onReceive(final Context context, final Intent bootintent) {
	// Here we will write calibration values to /sys/module/msm_ts/parameters/
    }
}
