

f = open("h.css", "w")
for i in range(200):
    if i == 0: continue

    ii = i*5

    f.write( ".h" + str(ii) + " {\n" )
    f.write( "  height: " + str(ii) + "px;\n" )
    f.write( "}\n" )










f.close

