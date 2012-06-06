namespace :solve do
  desc "Solve Hot Dog Heat"
  task :run => [:environment] do
    graph = Graph.new
    graph.add_edge "A", "B", 4
    graph.add_edge "A", "E", 3
    graph.add_edge "B", "D", 5
    graph.add_edge "B", "C", 6
    graph.add_edge "D", "E", 3
    graph.add_edge "D", "C", 6

    # p graph.edges
    p graph.shortest_paths("A")
  end  
end
