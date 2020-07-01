class Appointment
    def initialize (location, purpose, hour, min)
        @location = location
        @purpose=purpose
        @hour=hour
        @min = min
    end


    def location
        @location
    end

    def purpose
        @purpose
    end

    def hour
        @hour
    end

    def min
        @min
    end


end


class MonthlyAppointment < Appointment
    def initialize (location, purpose, hour, min, day)
        super (location, purpose, hour, min)
        @day=day
    end

    def day
        @day
    end

    def occurs_on?(day)
        day.to_i == self.day? true : false
    end

    def to_s
        "Reunion mensual en #{@location} sobre #{@purpose} el dia #{day} a las #{@hour}:#{@min}."
    end


end

class DailyAppointment < Appointment
    
    def occurs_on?(hour,min)
        @hour == hour && @min == min 
    end

    def to_s
        "Reunion mensual en #{@location} sobre #{@purpose} el dia #{day} a las #{@hour}:#{@min}."
    end
end


class OneTimeAppointment < Appointment
    def initialize (location, purpose, hour, min, day, month, year)
        super (location, purpose, hour, min)

        @day = day
        @month = month
        @year = year
    
    end

    def occurs_on?(day, month, year)
        day.to_i == @day && month.to_i == @month && year.to_i == @year

    end

    def to_s
        "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."

    end


end