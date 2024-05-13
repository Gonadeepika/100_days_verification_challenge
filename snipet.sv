module test;


bit a;
bit b;
bit c;
bit clk;

//initial
//begin

property ppt;
	@(posedge clk )
//disable iff(!rst)
 $rose(a) |=> ##1  (b[=2]) ##2 c;

endproperty

a_cc:assert property(ppt);
b_cc:cover property(ppt);
initial
begin



forever
begin
#10;
clk=~clk;
end
end


initial
begin


{a,b,c}=3'b000;
#10;
{a,b,c}=3'b100;
#10;
{a,b,c}=3'b000;
#10;
{a,b,c}=3'b010;
#10;
{a,b,c}=3'b000;
#10;
{a,b,c}=3'b010;
#10;
{a,b,c}=3'b001;
#10;
{a,b,c}=3'b100;
#10;
{a,b,c}=3'b000;
#10;
{a,b,c}=3'b010;


$finish;
#5
$monitor("print the values is %p", $time,a,b,c);

end
//end

endmodule




/*    module test;
                  // property p;
                  //initial
                 //begin
                        bit a;
                          bit b;
                         bit c;
                        bit clk,rst;
                    // always@(posedge clk)
                     // a_cc: assert property(@(posedge clk)  $rose(a) |=> ##1 (b[=2]) ##2 c;
                     // a_cc:assert property (p);
                           property p;  
                  @(posedge clk or negedge rst)
                       disable iff(!rst)
                        $rose(a) |=> ##1 (b[=2]) ##2 c;
                 // $monitor("/t fail at 11 cycle=%t,%p,%p,%p",$time,a,b,c);


      endproperty
    a_cc: assert property(p);
   b_cc:cover property(p);
                
//$display("/tassertion passed=%t",$time);
//$display("/t assertion failed=%t",$time);
 
initial
begin
//bit clk;

//clk=1'b0;
forever
  begin
  #10;
 clk=~clk;
 end
end
initial
begin
  {a,b,c}=3'b000;
 #10 {a,b,c}=3'b100;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b001;
 #10 {a,b,c}=3'b100;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b100;
 #10 {a,b,c}=3'b001;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b010;
 #10 {a,b,c}=3'b000;
 #10 {a,b,c}=3'b001;


$finish;
#5;
end
endmodule*/
