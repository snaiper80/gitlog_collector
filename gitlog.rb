# Desc   : Git Log functions
# Author : snaiper
 
def read_head_version
   IO.popen('git rev-parse HEAD') do |io|
      $old_built_version = io.read
   end
end

def collect_log(start_version)
   IO.popen("git log --abbrev-commit --pretty=oneline --no-merges #{start_version}..HEAD | sed 's/^.\\{8\\}\\(.*\\)/\\1/'") do |io|
      logs = io.read
      logs
   end   
end

