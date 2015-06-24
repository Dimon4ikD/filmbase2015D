class Banner < ActiveRecord::Base
  has_attached_file :image, styles: {medium: {height: "1100x230"}, thumb: "150x450>"}

  belongs_to :film

  validates_attachment :image, content_type: {content_type: /\Aimage\/.*\z/}
  validates :frequency, numericality: {less_than_or_equal_to: 300, greater_than_or_equal_to: 0}, allow_blank: true
  validates :click, numericality: {only_integer: true, greater_than_or_equal_to: 0}, presence: true

  # validate :check_s_date
  # validate :check_e_date
  # validates :start_date, :mask => "30.12.2050:60:60:60"

  # t.date :start_date
  # t.date :end_date

  def can_show?
    self.frequency>0
  end

  # def click
  #   @banner = Banner.find(params[:banner_id])
  #   @banner.increment!(:click)
  # end

  def decrease_f
    if self.frequency!=0
      self.update(frequency: self.frequency-1)
    else puts "Не получится показать"
    end
  end

  def self.manage?(u)
    u.try(:admin?)
  end


  private
  def check_s_date
    errors.add(:start_date, :invalid) if start_date && start_date>Time.now
    true
  end

  def check_e_date
    errors.add(:end_date, :invalid) if end_date && end_date<Time.now
    true
  end

end