package com.insignia4u.sudokum

import android.app.Activity
import android.util.Log

import android.content.Intent
import android.view.View
import android.view.View.OnClickListener

import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem

class Sudoku < Activity

  def onCreate(state)
    super state
    setContentView R.layout.main

    # Set up click listeners for all the buttons
    this = self
    continueButton = findViewById(R.id.continue_button)
    continueButton.setOnClickListener{|v| nil }

    newButton = findViewById(R.id.new_button)
    newButton.setOnClickListener{|v| nil }

    aboutButton = findViewById(R.id.about_button)
    aboutButton.setOnClickListener do |v|
      i = Intent.new(this, Class.forName('com.insignia4u.sudokum.About'))
      this.startActivity i
    end

    exitButton = findViewById(R.id.exit_button)
    exitButton.setOnClickListener{|v| nil }
  end

  def onCreateOptionsMenu(m):boolean
    super m
    getMenuInflater.inflate R.menu.menu, m
    true
  end

  def onOptionsItemSelected(menu_item)
    if menu_item.getItemId == R.id.settings  
      startActivity Intent.new(self, Class.forName('com.insignia4u.sudokum.Prefs'))
      return true
    end
    false
  end

end
