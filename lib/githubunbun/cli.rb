module Githubunbun
  class CLI < Thor
    desc "list GITHUB_TOKEN", "List repositories"
    option :github_token
    def list
      github = Githubunbun::Github.new(options[:github_token])

      github.repositories.each do |repository|
        puts repository
      end
    end
  end
end
