package com.insignia4u.sudokum

import android.app.Activity
import android.util.Log

import android.content.Intent
import android.view.View
import android.view.View.OnClickListener

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

end
