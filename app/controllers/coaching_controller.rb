class CoachingController < ApplicationController
  def answer
    your_message = params[:user_question]
    @answer = get_answer(your_message)
  end

  def ask
  end

  def get_answer(your_message)
    if your_message.end_with?("?") && (your_message == your_message.upcase)
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
