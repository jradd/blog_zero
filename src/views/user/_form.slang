- if user.errors
  ul.errors
  - user.errors.each do |error|
    li = error.to_s

== form(action: "/users/#{user.id.to_s}", method: user.id ? :patch : :post) do
  == csrf_tag
  div.form-group
  == text_field(name: "email", value: user.email, placeholder: "Email", class: "form-control")
  div.form-group
  == text_field(name: "encrypted_password", value: user.encrypted_password, placeholder: "Encrypted_password", class: "form-control")
  == submit("Submit", class: "btn btn-primary btn-xs")
  == link_to("back", "/users", class: "btn btn-default btn-xs")
