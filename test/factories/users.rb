FactoryBot.define do
  factory :user do

    name do
      nombres = %w[Diego Juan Juana Manuel Jose Ricardo Maria Marco Jo sA Colo Nino Arturo]
      apellidos = %w[Florian Espejo Torres Juarez Rico Lopez Sanchez Perez Aguilar Pimentel Arrestegui Horna]

      nombres.sample + apellidos.sample
    end

    type { ['Chasqui', 'Service'].sample }

    kind { rand(1...8) }

    latitude { -8.01 * rand(0.99..1.02) }
    longitude { -79.01 * rand(0.999..1.001) }

    email { "#{name}@#{type}.com" }
    phone { rand(900_000_000..999_999_999) }
  end
end
