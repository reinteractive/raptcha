module Raptcha
 
  def self.included(model)
    model.class_eval do
      validate_on_create :validate_captcha
    end
    ActionController::Base.view_paths << "#{File.expand_path(File.dirname(__FILE__))}/../views"
  end

  attr_accessor :captcha_answer
  attr_writer :captcha_question


  def captcha_question
    @captcha_question ||= captcha_questions.to_a[rand(captcha_questions.length)].first
  end

  def captcha_questions
    { 'What is one plus one?'      => ['two', '2' ],
      'What number comes after 8?' => ['nine', '9'],
      "What's the first letter in 'Belt'?" => ['B','b'], 
      "What's the first word in the word 'Rawhide'?" => ['Raw','raw,' 'RAW'], 
      "What's the 5th letter in 'Accessories'?" => ['S','s'] 
    }
  end

  private
  def validate_captcha
    errors.add_to_base("The question to determine you are human wasn't answered correctly") unless check_captcha 
  end

  def check_captcha
    captcha_questions[captcha_question].include?(captcha_answer.to_s)
  end

end
