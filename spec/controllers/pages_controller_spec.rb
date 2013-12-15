require 'spec_helper'

describe PagesController do

  describe 'GET #index' do

    context 'with a valid user' do
      it 'assigns tweets to be of size 5' do
        VCR.use_cassette('twitter/user_timeline') do
          get :index
          expect(assigns(:tweets).size).to equal(5)
        end
      end

      it 'returns http success' do
        VCR.use_cassette('twitter/user_timeline') do
          get :index
          response.should be_success
        end
      end
    end

    context 'with an invalid user' do
      it 'does not assign any tweets', :vcr do
        tweets = controller.instance_eval{ user_tweets_for('@rdakfjdkfsf') }
        expect(tweets).to be_empty
      end
    end
  end

end
