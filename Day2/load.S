.section .text
.global load
.type load, @function

load:
	add a4,a0,zero //Initializing the total sum variable
	add a3,a0,zero // Initialze the intermidate sum variable
	add a2,a0,a1 //count variable variable
loop: 	add a4,a3,a4 //Incremental addition
	addi a3,a3,1 //Incrementing the intermediate register
	blt a3,a2,loop //If a3 is less than a2, branch to label named <loop>
	add a0,a4,zero //Store final result to register a0 so that it can be read by main program
	ret
