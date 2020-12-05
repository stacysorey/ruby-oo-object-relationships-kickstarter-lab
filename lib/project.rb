class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        #takes a title on initialization, 
        #accessible through an attribute reader
        @title = title
    end

    def self.all
        #returns the @@all class variable
        @@all
    end

    def add_backer(backer)
        #is an instance method that accepts a backer as an argument and
        #creates a ProjectBacker, associating the backer with this project
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select {|proj_b| proj_b.project == self}
        project_backers.collect {|proj_b| proj_b.backer}
    end

end