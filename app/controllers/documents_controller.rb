class DocumentsController < ApplicationController
  def terms
    send_file("#{Rails.root}/public/terms.pdf", filename: "termos_de_uso.pdf", type: "application/pdf")
  end

  def privacy
    send_file("#{Rails.root}/public/privacy.pdf", filename: "politicas_de_privacidade.pdf", type: "application/pdf")
  end
end
