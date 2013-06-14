desc "Delete all comments"
task :delete_comments => :environment do
  Comment.all.each {|c| c.destroy }
end
