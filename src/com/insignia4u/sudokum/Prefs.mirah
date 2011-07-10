package com.insignia4u.sudokum

import android.os.Bundle
import android.preference.PreferenceActivity

class Prefs < PreferenceActivity
  def onCreate(state)
    super state
    addPreferencesFromResource R.xml.settings
  end
end