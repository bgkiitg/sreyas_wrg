import copy
from sage.misc.viewer import viewer
# Wheel edges with centre as 1 and 2-6 on the rim.
wheel_edges=[(1,2),(1,3),(1,4),(1,5),(1,6),(2,3),(3,4),(4,5),(5,6),(6,2)]
tetra_edges=[(1,2),(1,3),(1,4),(2,3),(3,4),(4,2),(5,2),(5,3),(6,2),(6,4),(7,3),(7,4)]
triangle_edges=[(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(2,3),(3,4),(4,2),(2,5),(5,3),(3,6),(6,4),(4,7),( 7,2)]
square_edges=[(1,2),(2,3),(3,4),(4,1),(1,5),(1,6),(1,7),(5,6),(6,7),(6,4),(7,4),(6,3),(2,4)]

non_wrg_seven = []
for i in range(26):
    G= Graph()
    G.add_vertices([1,2,3,4,5,6,7,8])
    #The first 21 have W5 as a subgraph. The first 16 has W5 as an induced subgraph
    if i < 21:
        G.add_edges(wheel_edges)
    #The next four are based on the tetrahedron
    if (i>=21 and i <24):
        G.add_edges(tetra_edges)
    if( i == 24):
        G.add_edges(triangle_edges)
    if( i == 25):
        G.add_edges(square_edges)
    print(i," edge count ",G.size())
    non_wrg_seven.append(G)
    

# Fine tuning the edges
non_wrg_seven[1].add_edges([(1,7)])
non_wrg_seven[2].add_edges([(2,7)])

non_wrg_seven[2].add_edges([(1,7),(2,7)])
non_wrg_seven[4].add_edges([(2,7),(3,7)])
non_wrg_seven[5].add_edges([(2,7),(4,7)])

non_wrg_seven[6].add_edges([(1,7),(2,7),(3,7)])
non_wrg_seven[7].add_edges([(1,7),(2,7),(4,7)])
non_wrg_seven[8].add_edges([(2,7),(3,7),(4,7)])
non_wrg_seven[9].add_edges([(2,7),(3,7),(5,7)])

non_wrg_seven[10].add_edges([(1,7),(2,7),(3,7),(4,7)])
non_wrg_seven[11].add_edges([(1,7),(2,7),(3,7),(5,7)])
non_wrg_seven[12].add_edges([(2,7),(3,7),(4,7),(5,7)])

non_wrg_seven[13].add_edges([(1,7),(2,7),(3,7),(4,7),(5,7)])
non_wrg_seven[14].add_edges([(2,7),(3,7),(4,7),(5,7),(6,7)])

non_wrg_seven[15].add_edges([(1,7),(2,7),(3,7),(4,7),(5,7),(6,7)])

non_wrg_seven[16].add_edges([(1,7),(2,7),(3,7),(4,7),(5,7),(6,7)])
non_wrg_seven[17].add_edges([(1,7),(2,7),(3,7),(5,7),(4,6)])

non_wrg_seven[18].add_edges([(2,7),(3,7),(4,7),(5,7)])
non_wrg_seven[18].delete_edges([(1,2)])

non_wrg_seven[19].add_edges([(2,7),(3,7),(4,7),(5,7)])
non_wrg_seven[19].delete_edges([(1,2),(1,5)])

non_wrg_seven[20].add_edges([(2,7),(3,7),(2,4),(2,5)])
non_wrg_seven[20].delete_edges([(1,2),(1,5)])

non_wrg_seven[22].add_edges([(1,5),(1,6),(1,7)])

non_wrg_seven[23].add_edges([(1,5),(1,6),(1,7)])
non_wrg_seven[23].delete_edges([(1,2),(1,3)])


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


# Example usage
numbers = [1, 2, 3]
all_subsets = generate_subsets(numbers)
print(all_subsets)

edge_list=[]
for i in range(7):
    edge_list.append((i+1,8))    

all_subsets= generate_subsets(edge_list)


all_graphs =[]
for i in range(26):
    for j in all_subsets:
        G = copy.deepcopy(non_wrg_seven[i])
        G.add_vertex(8)
        G.add_edges(j)
        all_graphs.append(G)


edge_filter =[]

for i in all_graphs:
    deg_seq =i.degree_sequence()
    tot_deg=sum(deg_seq)
    number_of_edges =tot_deg/2
    max=deg_seq[0]
    min=deg_seq[7]
    if(number_of_edges-min <17  and number_of_edges-max>10):
        edge_filter.append(i)

trouble_makers =[]
proof_list =[]
    
for G in all_graphs:
    is_bad=True
    vertices= [1,2,3,4,5,6,7,8]
    for  i in  range(7):
        vertices.remove(i+1)
        H=G.subgraph(vertices)
        count = 0
        for J in non_wrg_seven:
            if H.is_isomorphic(J):
                count += 1
        if count == 0:
            if is_bad == True:
                proof_list.append((G,H))
            is_bad = False
    if is_bad:
        trouble_makers.append(G)
    
