class SampleForm < Reform::Form
  property :title

  validates :title, presence: true
end
