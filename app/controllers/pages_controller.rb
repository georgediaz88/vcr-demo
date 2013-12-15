class PagesController < ApplicationController
  def index
    @user = '@rails'
    @tweets = user_tweets_for(@user)
  end

  private

  def user_tweets_for(user, options = {count: 5})
    $client.user_timeline(user, options)
    rescue Twitter::Error::NotFound => e; []
  end
end
