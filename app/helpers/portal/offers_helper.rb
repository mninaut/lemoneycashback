module Portal::OffersHelper
    def status(event)
        datetime = Time.now.localtime.to_datetime

        starts = event.starts_at.localtime.to_datetime

        if event.ends_at.present?
            ends = event.ends_at.localtime.to_datetime

            
            if datetime >= starts  && datetime < ends
                status = 'enabled'
            else
                status = 'disabled'

            end

        else
            status = 'enabled'
        end


        status
    
    end
    
end
