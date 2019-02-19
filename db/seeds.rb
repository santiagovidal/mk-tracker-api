User.find_or_create_by!(username: 'Jan')
User.find_or_create_by!(username: 'Pablo')
User.find_or_create_by!(username: 'Vita')
User.find_or_create_by!(username: 'Xime')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
