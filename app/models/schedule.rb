class Schedule < ApplicationRecord
  validates :weekDay, :openingTime, :closingTime, presence: true
  belongs_to :restaurant

  default_scope -> {order('weekDay ASC')}

  def dayToString
    case weekDay
    when 0
      return "Lunes"
    when 1
      return "Martes"
    when 2
      return "Miércoles"
    when 3
      return "Jueves"
    when 4
      return "Viernes"
    when 5
      return "Sábado"
    when 6
      return "Domingo"
    end
  end
end
