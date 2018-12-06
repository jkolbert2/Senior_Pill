namespace :Admin_testing do
    
  desc "Tests for existence of, and prints, users associated patient list"
    task admin_test: :environment do
    User.find do |user|
            puts user.name
            puts user.admin
            puts user.patientlist
            user.patientlist.push(1)
            puts user.patientlist
        end
     end
  end
