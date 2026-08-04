require "test_helper"

# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  description :string
#  published   :boolean          default(FALSE)
#  title       :string
#  visible     :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
