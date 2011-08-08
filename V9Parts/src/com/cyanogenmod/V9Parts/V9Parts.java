package com.cyanogenmod.V9Parts;

import com.cyanogenmod.V9Parts.R;

import android.os.Bundle;
import android.preference.PreferenceActivity;

public class V9Parts extends PreferenceActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.v9parts);
    }
}
