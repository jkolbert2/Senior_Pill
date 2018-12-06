namespace :Admin_testing do
    
  desc "Tests for existence of, and prints, users associated patient list"
    task admin_test: :environment do
    User.find do |user|
        puts user.patientlist
        end
     end
  end
