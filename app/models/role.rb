class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        Audition.where(role_id: self.id).map {|audition| audition.actor}
    end

    def locations
        Audition.where(role_id: self.id).map {|audition| audition.location}
    end

    def lead
        if Audition.exists?(role_id: self.id, hired: true) == true
            Audition.find_by(role_id: self.id, hired: true)
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
        understudy = Audition.where(role_id: self.id, hired: true)
        understudy
        # else
        #     "no actor has been hired for understudy for this role"
        # end
    end


end