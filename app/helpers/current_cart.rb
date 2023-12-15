module CurrentCartHelper

def current_cart
    @current_cart ||= Cart.find_or_create_by(user: current_user, status: 'open')
   end
end