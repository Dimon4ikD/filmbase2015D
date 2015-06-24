desc "Создание 3 пользователей с разными правами"
namespace :users do
  task :create=>:environment do

    us1=User.create(name: "Admin",
                    email: "admin@admin.ru",
                    password_digest: "i_am_god",
                    role: 1)
    us2=User.create(name: "Администратор",
                    email: "12@12.ru",
                    password_digest: "1234567",
                    role: 1)
    us3=User.create(name: "Пользователь",
                    email: "00@0.ru",
                    password_digest: "1234567",
                    role: 0)
  end
end
