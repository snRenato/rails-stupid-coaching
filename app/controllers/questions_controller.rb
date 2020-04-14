# frozen_string_literal: true

# descricao
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = if params[:question].include?('?')
                'Silly question, get dressed and go to work!'
              elsif params[:question].exclude?('?')
                'I am going to work'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
