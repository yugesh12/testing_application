# Preview all emails at http://localhost:3000/rails/mailers/contact_form
class ContactFormPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_form/new_contact
  def new_contact
    ContactForm.new_contact
  end

end
