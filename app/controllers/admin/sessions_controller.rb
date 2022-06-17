class Admin::SessionsController < Devise::SessionsController
    layout 'admin/unauthenticate'
end
