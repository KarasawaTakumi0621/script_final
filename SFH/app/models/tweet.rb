class PostCodeValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors.add(attribute, '攻撃的な内容が含まれています。') unless !(value =~ /(?:(?:う(?:るさ|ざ)|きも|キモ)い|死[ぬね]|カス|ゴミ|殺す|進捗)/)
    #   /う(?:るさ|ざ)い|死ね|殺す/)
    #   !(value =~ /殺す|死ね/)
    end
end

class Tweet < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, post_code: true
    validates :content, presence: true, post_code: true
end
