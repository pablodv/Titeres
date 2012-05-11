class Admin::GalleriesController < ApplicationController
  before_filter :authenticate_admin!
end
