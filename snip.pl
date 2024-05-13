$a="ab";
$b="a";
if($a gt $b)
{
	#print "true \n"
}
else
print "false \n";
}
########snippets#########
=pod
     $var="Perl";
     $var1='$var';
     $var2= "$var";

     print "$var1\n";
     print "$var2\n";
=cut       
  
      
############### arrays ##################
=pod
     @array=(1,2,"a","b");
     print("@array\n");
=cut 
############# Hash ###############
=pod
        
          %hash=("key"=>1,
	    "key2"=>2,
            "key3"=>"a",
	    "key4"=>"b");
            print("");
=cut
######## Arithmetic Opeartor ################
=pod
    $x=5;
    $y=10;
    $z=$x+$y;
    print("$z\n");
=cut
###### Assignment Operator #########
           $x=5;
           $x+=10;
	   print("$x\n");

###### Relation Operator ######
	   $x="abc";
	   $y="abc";
	      if($x eq $y)
	      { 
	        print("true\n");
	      }
	      else
	      {
		      print("false\n");
	      }
####### logical Operator #######
	      $x=4;
	      $y=5;
	    if($x==4 && $y==5)
	      {
		      print"true\n";
	      }
	      else
	      {
		      print"false\n";
	    
		      
	      }
	



	      #####string repetion operator####	   

     $string ="abc";
	    print "string \n" x3;



	    ########conditional branches#3##33#33
	    
	    ####if conditional branche###
	    
	    $a=5;
	    if($a==5);
	    {
		    print "the value is $a \n"
	    }


	    ###ifelse###

	    
$a-5;
if($a==5)
{
	print "$a \n"
}
else
{
	print "zero \n"
}



#3####ifelseif###3

$a=5;
if($a==5)
{
	print "$a \n"
}
else
{
	print "zero \n"

}

else 
{
	#print "default \n"
s}


######controlled loops##

@array={1...10};
for(@array=0; @array<10; @array++)
{
print " @array \n"
}


###for each loop##


@array={1..10};
foreach $num{@array)
{
	print "@array \n";
}

##while loop#3



$a=10;
while ($a<20)
{
	print "$a \n";
}

$a=$a+1;
}


### subroutine###
sub subroutine
{
	print " the value is :\n";
	}

	subroutine;

	##33##build in function###

		print "hello world \n";



		$string ="the lesson";
		chop("string");


		$string = " the lesson \n";
		chomp{string"};



			system "hello \n";




			@array={1,2,3,4};
			@arra1=$reverse(@array);
			{
			print " @arra1 \n";
			}

			###me3thods od array##
			



			@array={1,2,3,4,5, "MAVEN". "\n"};
			pop(@array);
			print "element inside the array of popping :@array \n";



			@array={1,2};
			print "before the elements of pushing :@array \n";
			@array={3,4};
			print" after the pushing :@array \n";


@array={1,2,3,4};
	    shift(@array 0,4);
	print" after the shifting :@array \n";



			




	    @array={1,2,3,4};
	    unshift(@array 0,4);
	print" after the unshifting :@array \n";


@array={1,2,3,4};
	    @array=(@array 0,2);
	print" after the silicing :@array \n";


@array={1.....20};
	    spice(@array 0,4,3,4,5);
	print" after the spicing :@array \n";


	###special variables33E###
	

	@array={a....f};
	foreach(@array)
	{
	print " elements are $_ \n";
	}


	
	sub s1
	{
	print " the elements are @_ \n";
	}
&s1(3,4,5);

	


###file operators##


sub gnt_info
{
print "please give me the following information \n";
print "name" \n";
$e=<STDIN>
chomp($e)
$e=uc$e;




open (f1, "f1.txt");
$title=<f1>;
print "report title :$title";
for $line(<f1>)
{
	print $line;
}
close f1;



#####example as pattern matching with special characters###



print "enter a valid email address \n";
$email =<STDIN>;
if($email =~ /\w+\@\w+(\b.com\b\/b.org\b)/i)
{
	print "v
	
	
	alid email id : pass \n";

	}

	else
	{
	print "an invalid email id : fail \n";
	}

	print "enter your date of birth \n";

	{
		print "enter a month : \n";

		$month =<STDIN>;
		if($month =~ /\([1-9]/[1][0-2])$/)
	{
		print "pass \n";
		{

			print "enter data:\n";
		}

