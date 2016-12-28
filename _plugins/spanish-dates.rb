module Jekyll
    module SpanishDates
        MONTHS = {"01" => "Enero", "02" => "Febrero", "03" => "Marzo",
                "04" => "Abril", "05" => "Mayo", "06" => "Junio",
                "07" => "Julio", "08" => "Agosto", "09" => "Septiembre",
                "10" => "Octubre", "11" => "Noviembre", "12" => "Diciembre"}

        def spanishDate(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end

Liquid::Template.register_filter(Jekyll::SpanishDates)
