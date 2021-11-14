module ArticlesHelper
    # TODO: Display with client date and time
    def display_date(date)
        time_difference = Time.current - (date - 9.hours)
        if time_difference / 1.minute < 1
            return 'A few moments ago'
        elsif time_difference / 1.hour < 1
            return "#{(time_difference / 1.hour).round} minutes ago"
        elsif time_difference / 1.hour < 2
            return "An hour ago"
        elsif time_difference / 1.day < 1
            return "#{(time_difference / 1.hour).round} hours ago"
        elsif time_difference / 1.day < 2
            return "Yesterday"
        elsif time_difference / 1.day < 3
            return "A couple days ago"
        elsif time_difference / 1.day < 4
            return "A few days ago"
        else
            return (date - 9.hours).strftime('%e %B %Y')
        end
    end
end
