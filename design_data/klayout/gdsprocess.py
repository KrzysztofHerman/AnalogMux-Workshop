import gdspy



def array_to_rect_string(array):
    x1, y1 = array[0]  # First point
    x2, y2 = array[2]  # Opposite corner (third point)
    return f"RECT {x1:.2f} {y1:.2f} {x2:.2f} {y2:.2f} ;"

# The GDSII file is called a library, which contains multiple cells.
lib = gdspy.GdsLibrary(infile='tgate_usm_nmos.gds')
[units, precision] = gdspy.get_gds_units(infile='tgate_usm_nmos.gds')
# Geometry must be placed in cells.

print(f"{units}")
print(f"{precision}")

available_cells = lib.cells.keys()
print("Available cells:", available_cells)

# Extract a specific cell by its name
cell_name = 'nswitch'  # replace with your actual cell name
cell = lib.cells[cell_name]

# Now you have the cell object, and you can work with it
print(cell)
# Display all cells using the internal viewer.


lay = cell.get_layers()
dt =  cell.get_datatypes()
text = cell.get_texttypes()
lab = cell.get_labels()

print(f"{lay}")
print(f"{dt}")
print(f"{text}")
print(f"{lab}")

layer_number = 8
datatype_number = 2

polygons = cell.get_polygons(by_spec=(layer_number, datatype_number))


#print(polygons)

for idx, embedded_array in enumerate(polygons):
    #    print(f"Array {idx+1}:\n{embedded_array}\n")
    print(array_to_rect_string(embedded_array))

gdspy.LayoutViewer(lib)
