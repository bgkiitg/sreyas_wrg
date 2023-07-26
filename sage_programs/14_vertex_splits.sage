import copy
from sage.misc.viewer import viewer
from sage.graphs.graph_generators import graphs

# Wheel edges with centre as 1 and 2-6 on the rim.
wheel_edges=[(1,2),(1,3),(1,4),(1,5),(1,6),(2,3),(3,4),(4,5),(5,6),(6,2)]
tetra_edges=[(1,2),(1,3),(1,4),(2,3),(3,4),(4,2),(5,2),(5,3),(6,2),(6,4),(7,3),(7,4)]
square_edges=[(1,2),(2,3),(3,4),(4,1),(1,5),(1,6),(1,7),(5,6),(6,7),(6,4),(7,4),(6,3),(2,4)]
triangle_edges=[(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(2,3),(3,4),(4,2),(2,5),(3,6),(4,7)]



#Empty graph
G00= Graph()
G01= Graph()
G02= Graph()
G03= Graph()
G04= Graph()
G05= Graph()
G06= Graph()
G07= Graph()
G08= Graph()
G09= Graph()
G10= Graph()
G11= Graph()
G12= Graph()
G13= Graph()
G14= Graph()
G15= Graph()
G16= Graph()
G17= Graph()
G18= Graph()
G19= Graph()
G20= Graph()
G21= Graph()
G22= Graph()
G23= Graph()
G24= Graph()
G25= Graph()

#Add vertices

G00.add_vertices([1,2,3,4,5,6,7])
G01.add_vertices([1,2,3,4,5,6,7])
G02.add_vertices([1,2,3,4,5,6,7])
G03.add_vertices([1,2,3,4,5,6,7])
G04.add_vertices([1,2,3,4,5,6,7])
G05.add_vertices([1,2,3,4,5,6,7])
G06.add_vertices([1,2,3,4,5,6,7])
G07.add_vertices([1,2,3,4,5,6,7])
G08.add_vertices([1,2,3,4,5,6,7])
G09.add_vertices([1,2,3,4,5,6,7])
G10.add_vertices([1,2,3,4,5,6,7])
G11.add_vertices([1,2,3,4,5,6,7])
G12.add_vertices([1,2,3,4,5,6,7])
G13.add_vertices([1,2,3,4,5,6,7])
G14.add_vertices([1,2,3,4,5,6,7])
G15.add_vertices([1,2,3,4,5,6,7])
G16.add_vertices([1,2,3,4,5,6,7])
G17.add_vertices([1,2,3,4,5,6,7])
G18.add_vertices([1,2,3,4,5,6,7])
G19.add_vertices([1,2,3,4,5,6,7])
G20.add_vertices([1,2,3,4,5,6,7])
G21.add_vertices([1,2,3,4,5,6,7])
G22.add_vertices([1,2,3,4,5,6,7])
G23.add_vertices([1,2,3,4,5,6,7])
G24.add_vertices([1,2,3,4,5,6,7])
G25.add_vertices([1,2,3,4,5,6,7])



non_wrg_seven=[]    #non_wrg_seven is to store the list of 26 non-wr-graphs.



# Add the main edges

G00.add_edges(wheel_edges)
G01.add_edges(wheel_edges)
G02.add_edges(wheel_edges)
G03.add_edges(wheel_edges)
G04.add_edges(wheel_edges)
G05.add_edges(wheel_edges)
G06.add_edges(wheel_edges)
G07.add_edges(wheel_edges)
G08.add_edges(wheel_edges)
G09.add_edges(wheel_edges)
G10.add_edges(wheel_edges)
G11.add_edges(wheel_edges)
G12.add_edges(wheel_edges)
G13.add_edges(wheel_edges)
G14.add_edges(wheel_edges)
G15.add_edges(wheel_edges)
G16.add_edges(wheel_edges)
G17.add_edges(wheel_edges)
G18.add_edges(wheel_edges)
G19.add_edges(wheel_edges)
G20.add_edges(wheel_edges)
G21.add_edges(tetra_edges)
G22.add_edges(tetra_edges)
G23.add_edges(tetra_edges)
G24.add_edges(triangle_edges)
G25.add_edges(square_edges)



# Fine tuning the edges

#G00.add_edges()
G01.add_edges([(2,7)])
non_wrg_seven.append(G01)
G02.add_edges([(2,7),(4,7)])
non_wrg_seven.append(G02)
G03.add_edges([(2,7),(3,7),(4,7)])
non_wrg_seven.append(G03)
G04.add_edges([(1,7),(2,7),(4,7)])
non_wrg_seven.append(G04)
G05.add_edges([(1,7)])
non_wrg_seven.append(G05)
G06.add_edges([(1,7),(3,7)])
non_wrg_seven.append(G06)
G07.add_edges([(2,7),(3,7)])
non_wrg_seven.append(G07)
G08.add_edges([(1,7),(2,7),(3,7)])
non_wrg_seven.append(G08)
G09.add_edges([(2,7),(3,7),(5,7)])
non_wrg_seven.append(G09)
G10.add_edges([(2,7),(3,7),(5,7),(1,7)])
non_wrg_seven.append(G10)
G11.add_edges([(2,7),(3,7),(4,7),(1,7)])
non_wrg_seven.append(G11)
G12.add_edges([(2,7),(3,7),(2,4),(2,5)])
G12.delete_edges([(1,2),(1,5)])
non_wrg_seven.append(G12)
G13.add_edges([(2,7),(4,7),(5,7),(6,7)])
G13.delete_edges([(1,2),(1,4)])
non_wrg_seven.append(G13)
G14.add_edges([(2,7),(4,7),(5,7),(6,7)])
G14.delete_edges([(1,4)])
non_wrg_seven.append(G14)
G15.add_edges([(2,7),(4,7),(5,7),(6,7)])
non_wrg_seven.append(G15)
G16.add_edges([(2,7),(4,7),(5,7),(6,7),(1,7)])
non_wrg_seven.append(G16)
G17.add_edges([(2,7),(4,7),(5,7),(6,7),(1,7),(2,4)])
non_wrg_seven.append(G17)
G18.add_edges([(2,7),(4,7),(5,7),(6,7),(3,7)])
non_wrg_seven.append(G18)
G19.add_edges([(2,7),(4,7),(5,7),(6,7),(3,7),(1,7)])
non_wrg_seven.append(G19)
G20.add_edges([(2,4),(5,7),(6,7),(3,7),(1,7)])
non_wrg_seven.append(G20)
G22.add_edges([(1,6),(1,7),(1,5)])
non_wrg_seven.append(G22)
G23.add_edges([(1,6),(1,7),(1,5)])
G23.delete_edges([(1,2),(1,3)])
non_wrg_seven.append(G21)
non_wrg_seven.append(G24)
non_wrg_seven.append(G25)
non_wrg_seven.append(G00)




# now, we have the list of graphs on 7 vertices that are non -wr.
# next, we have to generate all possible 7 vertex graphs on vertex set 8 to 14.

# Define the vertex set
vertex_set = [8, 9, 10, 11, 12, 13, 14]

# Define the number of vertices
num_vertices = len(vertex_set)

# Generate the graphs as an iterator
graph_iterator = graphs.nauty_geng(str(num_vertices))





# Filter the graphs to keep only those with the desired vertex set

filtered_graphs = (G for G in graph_iterator if set(G.vertices()) == set(vertex_set))

# filtered_graphs have all possible 7 vertex graphs on the desired vertex set.

# to generate all possible graphs to be examined we have to add all possible cross edges also.



def generate_subsets(nums):
    subsets = [[]]  # Start with an empty subset

    # Recursive function to generate subsets
    def backtrack(start, curr_subset):
        if start == len(nums):
            return

        for i in range(start, len(nums)):
            # Include the current number in the subset
            curr_subset.append(nums[i])
            subsets.append(curr_subset[:])  # Add a copy of the subset to the list

            # Explore further possibilities with the updated subset
            backtrack(i + 1, curr_subset)

            # Backtrack by removing the current number
            curr_subset.pop()

    # Call the backtrack function to generate subsets
    backtrack(0, [])

    return subsets



final_vertex_set= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]


edge_list=[]
for i in range(7):
	for j in range(7):
    		edge_list.append((i+1, j+8))    

all_subsets = generate_subsets(edge_list)


all_graphs =[]


for graph1 in non_wrg_seven:
	for graph2 in filtered_graphs:
		for i in all_subsets:
			G=Graph()
			G.add_vertices([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])	
			G.add_edges(graph1.edges())
			G.add_edges(graph2.edges())
			G.add_edges(i)
			all_graphs.append(G)


# now, we have the final list of graphs to be examined.




all_7_subsets = list(combinations(final_vertex_set, 7))

trouble_makers =[]
proof_list =[]
    
for G in all_graphs:
	is_bad=True
	for set1 in all_7_subsets:
		set2 = final_vertex_set - set1
		induced_subgraph1=G.subgraph(set1)
		induced_subgraph2=G.subgraph(set2)
		count=0
		for J in non_wrg_seven:
			if induced_subgraph1.is_isomorphic(J):
			
				count +=1
			if induced_subgraph2.is_isomorphic(J):
				count +=1
		if count == 0:
			is_bad = False
	if is_bad:
		trouble_makers.append(G)	









    
