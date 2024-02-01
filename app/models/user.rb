class User < ApplicationRecord
  # has_many :projects do
  #   def client
  #     where(client: true)
  #   end
  # end

  module ClientProjects
    def client
      where(client: true)
    end
  end
  has_many :projects, extend: [ClientProjects, PrefixedIds::Finder::ClassMethods]

  # has_many :client_projects, ->{ where(client: true) }, class_name: "Project"
end