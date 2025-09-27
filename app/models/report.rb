class Report < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :report_content, presence: :true
  validates :report_content, numericality: { other_than: 1 , message: "can't be blank" } 
  belongs_to :report_content
end
