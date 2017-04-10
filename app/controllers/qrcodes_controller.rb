class QrcodesController < ApplicationController
  require 'rqrcode'

  def generate
     if params[:text].present?
        @qr = RQRCode::QRCode.new( params[:text], size: 4)
     end
  end
  
end
