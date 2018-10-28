# == Schema Information
#
# Table name: certificados
#
#  id         :integer          not null, primary key
#  ruta       :string(300)      not null
#  tipo       :string(45)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  dog_id     :integer
#  user_id    :integer
#
# Indexes
#
#  index_certificados_on_dog_id   (dog_id)
#  index_certificados_on_user_id  (user_id)
#

class Certificado < ApplicationRecord
    # carrierwave en ruta
    mount_uploader :ruta, RutaUploader 

    # Validaciones
    validates :ruta, :tipo, presence: true
    #validates :ruta, length: { maximum: 300, 
    #    too_long: "%{count} caracteres es el maximo permitido para el campo ruta" }
    validates :tipo, length: { maximum: 45, 
        too_long: "%{count} caracteres es el maximo permitido para le campo tipo" }

    # Relaciones
    belongs_to :dog
    # El objeto asociado existe?
    validates :dog, presence: true
end
