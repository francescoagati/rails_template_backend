class BaseController < ApplicationController

  respond_to :xml,:json
  #before_filter :authenticate_admin!

  helper :application
  inherit_resources
  render_inheritable

  extend Scaffold::Inject

end
