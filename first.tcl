#!usr/bin/tclsh
puts "Hello World"
puts $tcl_version
#puts $env(PATH)
set cmd "What's up senior"
puts $cmd
puts "String length: [string length $cmd]\n"
set li [expr 7.2/4 ]
puts $li

# #############################################
# Eval - to execute the cmmand later in program
# ##############################################
set c {puts  "Output : Hello World\n..."}
set v 5
set b $v
puts $v
puts $b
eval $c

set a {puts "Hi there, You are smart!!\n"}
set h \$a
puts "\[h\]: $h\n"
puts "\[a\]: $a\n"
puts "The length of the string \" $a \" is : [string length $a] .\n"
puts [format "String:\"%s\"\t%d" $a [string length $a] ]

# #######################################
# use backslash to continue in next line
# ########################################
set tt [expr [string length $cmd] + \
[string length $a] ]
puts $tt

# #################
# Concatenation
# ##################
set conc $cmd$a
puts $conc
set con "$cmd?\t$a\n"
puts "\[output:con\]: $con\n"

# ###########
# Procedure
# ###########
proc D {a b} {
	set c [expr sqrt(($a *$a) + ($b *$b))]
	return $c
}
puts "Proc output is [D 6 8] "

# ############################
# Factorial Proc
# ############################
proc Factorial {x} {
	set i 1
	set p 1
	while {$i <= $x } {
		set p [expr $i * $p]
		incr i
		}	
	return $p 
}
puts "Factorial  of 5:[Factorial 5]\n"

# ##########################
#  set - retun varable value
# ##########################
set hi { Welcome to India}
set hello hi
puts $hello
# only work in tclshell
# set [set hello] --- o/p is Welcome to India


