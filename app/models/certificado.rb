# == Schema Information
#
# Table name: certificados
#
#  id         :integer          not null, primary key
#  ruta       :string(300)      not null
#  tipo       :string(45)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  dog_id     :integer
#

class Certificado < ApplicationRecord
    # Validaciones
    validates :ruta, :tipo, presence: true
    validates :ruta, length: { maximum: 300, 
        too_long: "%{count} caracteres es el maximo permitido para el campo ruta" }
    validates :tipo, length: { maximum: 45, 
        too_long: "%{count} caracteres es el maximo permitido para le campo tipo" }

    # Relaciones
    belongs_to :dog
    # El objeto asociado existe?
    validates :dog, presence: true
end
