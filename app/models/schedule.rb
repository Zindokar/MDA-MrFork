class Schedule < ApplicationRecord
  validates :weekDay, :openingTime, :closingTime, presence: true
  belongs_to :restaurant

  default_scope -> {order('weekDay ASC')}

  def dayToString
    case weekDay
    when 1
      return "Lunes"
    when 2
      return "Martes"
    when 3
      return "Miércoles"
    when 4
      return "Jueves"
    when 5
      return "Viernes"
    when 6
      return "Sábado"
    when 0
      return "Domingo"
    end
  end
end
