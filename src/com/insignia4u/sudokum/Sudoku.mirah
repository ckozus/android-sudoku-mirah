package com.insignia4u.sudokum

import android.app.Activity
import android.util.Log

import android.content.Intent
import android.view.View
import android.view.View.OnClickListener

import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem

import android.app.AlertDialog
import android.app.AlertDialog.Builder
import android.content.DialogInterface
import android.util.Log

class Sudoku < Activity

  def onCreate(state)
    super state
    setContentView R.layout.main

    # Set up click listeners for all the buttons
    this = self
    continueButton = findViewById(R.id.continue_button)
    continueButton.setOnClickListener{|v| nil }

    newButton = findViewById(R.id.new_button)
    newButton.setOnClickListener do |v|
      this.openNewGameDialog
    end

    aboutButton = findViewById(R.id.about_button)
    aboutButton.setOnClickListener do |v|
      i = Intent.new(this, Class.forName('com.insignia4u.sudokum.About'))
      this.startActivity i
    end

    exitButton = findViewById(R.id.exit_button)
    exitButton.setOnClickListener do |v|
      this.finish
    end
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

  def openNewGameDialog
    dialog = AlertDialog.Builder.new(self)
    dialog.setTitle R.string.new_game_title
    this = self
    dialog.setItems(R.array.difficulty) do |dialogInterface, i|
      this.start(i)
    end
    dialog.show
  end

  def start(i:int)
    Log.i "openNewGameDialog", ">>>>>> this is the implementation: #{i}"
  end
end
