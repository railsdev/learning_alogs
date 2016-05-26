$list = {
  "A" => ["C","D","E"],
  "B" => ["C","F"],
  "C" => ["A","B","D","F","E"],
  "D" => ["A","C","E"],
  "E" => ["A","C","D"],
  "F" => ["B","C"]
 }


def bfs2
  queue = ["A"]
  visited = ["A"] #{"A"=>true}
  puts "A "
    while(!queue.empty?)
      do_print = false
      node = queue.pop()
      $list[node].each do |child|
        unless visited.include? child
           print "#{child} "
           queue.push(child)
           visited.push(child)
           do_print = true
         end
      end
      if do_print == true
        print "\n "
      end
    end
end

bfs2