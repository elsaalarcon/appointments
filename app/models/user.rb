class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :insurance
  has_one :profile
  has_many :appointments
  belongs_to :role, optional: true
  after_create :set_default_role

  private

  def set_default_role
    self.update(role_id: Role.find_by(code: 'default').id)
  end
end
