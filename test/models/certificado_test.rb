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

require 'test_helper'

class CertificadoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
