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

require 'test_helper'

class CertificadoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
