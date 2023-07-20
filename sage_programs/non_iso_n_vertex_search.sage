from sage.graphs.graph_generators import graphs

n = 8  # Number of vertices

trouble_makers=[]

for graph in graphs.nauty_geng(str(n)):
    # Do something with the graph
    complement_graph = graph.complement()
    if (graph.chromatic_number()>9 and complement_graph.chromatic_number()>3):
        trouble_makers.append(graph)

    


        
