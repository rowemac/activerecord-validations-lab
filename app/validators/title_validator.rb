class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            bait = ["Won't Believe", "Secret", "Top[number]", "Guess"]
            if bait.detect { | phrase | record.title.include?(phrase) }.nil?
                record.errors[:title] << "Not click-baity enough."
            end
        end
    end
        
        
end