class Backer
    attr_reader :name

    @@all = []

    def initialize(name)
        #takes a name on initialization, accessible through 
        #an attribute reader
        @name = name
    end

    def self.all
        #returns the @@all class variable
        @@all
    end

    def back_project(project)
        #is an instance method that accepts a project as an 
        #argument and creates a ProjectBacker, associating the
        #project with this backer
        ProjectBacker.new(project, self)
    end

    def backed_projects
        #returns an array of projects associated with this Backer instance
        projects = ProjectBacker.all.select {|proj_b| proj_b.backer == self}
        projects.collect {|proj_b| proj_b.project}
    end
end