# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
    /through: :board_tag_relationsで中間テーブルである、board_tag_relationsを経由してboardと多対多に設定する/
    has_many :model_tag_relations
    has_many :boards, through: :board_tag_relations
end
