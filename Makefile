run: lab5.cpp 
	g++ lab5.cpp -lglut -lGLU -lGL -lGLEW -g 
	
clean: 
	rm -f *.out *~ run
	
