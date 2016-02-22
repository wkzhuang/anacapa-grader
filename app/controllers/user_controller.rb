class UserController < ApplicationController
      def index
      	  client = Octokit::Client.new(access_token: "fed018790923f6eb9cc36e58c3246242baad57c6") 
          @organizations = client.organization_memberships
      end
end
