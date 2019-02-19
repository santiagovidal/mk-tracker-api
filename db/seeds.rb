AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Create the 4 users
User.find_or_create_by!(username: 'Jan')
User.find_or_create_by!(username: 'Pablo')
User.find_or_create_by!(username: 'Vita')
User.find_or_create_by!(username: 'Xime')

# Create the 48 tracks
Track.find_or_create_by!(name: 'Rainbow Road')
Track.find_or_create_by!(name: 'Baby Park')
Track.find_or_create_by!(name: 'Excitebike Arena')
Track.find_or_create_by!(name: 'Wario Stadium')

