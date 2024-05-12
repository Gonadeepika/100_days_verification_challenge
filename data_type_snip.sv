/*module data_type;
time a;
initial
begin
$display("default value=%b",a);
$display("type name=",$typename(a));
$display("number of bits=%0b",$bits(a));
$display("size of data type=",$size(a));
end
endmodule*/

/*module even_number();
reg [7:0]number;
initial
begin
number=0;
$display("even numbers:");
for(number=0;number<=18;
number=number+2);
begin
$display("%od", number);
end
end
endmodule*/

/*module findoddnumbers;
initial
begin
for(int number=0; number<=10; number=number+2)
begin
$display("odd number: %od", number);
end
end
endmodule*/

/*module findnaturalnumbers;
reg[7:0] current =1;
initial
begin
while(1)
begin
$display("%d is s natural number", current);
current=current+1;
end
end
endmodule*/

/*module findprimenumbers;
reg [7:0] start = 2;
reg [7:0] end  = 10;
initial
begin
for(int current =start; current<=end; current=current+1)
begin
int is_prime=1;
for(int i=2; i<current; i=i+1)
if(current % i==0)
begin
is_prime=0;
break;
end
end
if(is_prime)
begin
$display(" %d is a prime number", current);
end
end
$finish;
end
endmodule*/

/*module pi value;
real pi;
real freq;
initial
begin
pi=3.14;
freq=1e6;
$display("value of pi =%f", pi);
$display("value of pi=%0.3f", pi);
$display("value of freq=%od", freq);
end
endmodule*/

/*module logic_test(input y);
logic a,b;
assign b='b0;
assign a='b1;
initial
begin
a='b0;
end
endmodule :logic_test
module top;
logic c_out;
logic_test LT(c_out);
endmodule:top*/


/*module test;
int num1,num2,res;
initial
begin
res=num1+num2;
$display("num1=%0d,num2=%0d,result=%od", num1,num2,res);
end
endmodule*/

/*module test;
struct {bit [7:0]r,g,b; int colour;}pixel;
initial
begin
pixel.r=8'd25;
pixel.g=8'd55;
pixel.b=8'd11;
pixel.colour=32'd894;
$display("r=%d,g=%d,b=%d,colour=%d", pixel.r,pixel.g,pixel.b,pixel.colour);
end
endmodule*/

/*module test;
struct {bit [7:0] r,g,b; int colour;} pixel;
initial
begin
pixel.r=8'd25;
pixel.g=8'd55;
pixel.b=8'd11;
pixel.colour=32'd894;
$display("pixel=%p",pixel);
end
endmodule*/


/*module test;
struct {int num1,num2,result;}op;
initial
begin
op.num1=32'd30;
op.num2=32'd25;
op.result=op.num1+op.num2;
$display("data=%p", op);
if(op.result%2)
$display("result is odd");
else
$display("result is even ");
end
endmodule*/

/*module test;
typedef struct { bit[7:0]r,g,b; int colour;} pixel_st;
pixel_st samsung_pixel;
pixel_st sony_pixel;
initial
begin
samsung_pixel.r=8'd25;
samsung_pixel.g = 8'd55;
samsung_pixel.b=8'd11;
sony_pixel='{8'd38,8'd35,8'd95,8'd85};
$display("samsung_pixel=%d,sony_pixel=%d", samsung_pixel,sony_pixel);
endmodule*/

/*module test;
struct {string name;int id;int salary;} emp1,emp2;
initial
begin
emp1. name ="deepika";
emp1.id=32'd30;
emp1.salary=6;
emp2. name ="seshu";
emp2. id=32'd31;
emp2. salary=32'd127;
$display("emp1=%p,emp2=%p",emp1,emp2);
end
endmodule*/

/*module test;
struct {string s1,s2;int f1,f2,tm,p;}s,v;
initial
begin
s.s1="english";
s.s2="hindi";
v.s1="english";
v.s2="hindi";
s.f1=8'd64;
s.f2=8'd22;
v.f1=8'd28;
v.f2=8'd66;
s.tm=s.f1+s.f2;
v.tm=v.f1+v.f2;
s.p=(s.tm*100)/100;
v.p=(v.tm*100)/100;
$display("s.tm=%p,v.tm=%p",s.tm,v.tm);
$display("s.p1=%p,v.p2=%p",s.p,v.p);
end
endmodule*/

/*module test;
struct{int DT[31:0]; bit DTA;}p1,p2,p3;
initial
begin
p1.DT=32'd9;
p1.DTA=1;
p2.DT=32'd70;
p2.DTA=2;
p3.DT=32'd40;
p3.DTA=3;
$display("p1=%d,p2=%d,p3=%d",p1,p2,p3);
end
endmodule*/


/*module test;
logic [7:0]b1=8'b1101zzzz;
byte b2;
b2 = b1;
$write("b1=%b",b1);
$display("b2=5h",b2);
endmodule*/

/*module test;
typedef enum {ini,read,writ,brd,bwr} fsm_state_e;
fsm_state_e pre_state,nxt_state;
pre_state state =read;
    fsm_state_e pre_state=read;
fsm_state_e state=state.first;
initial
forever
begin
$display("%s:%d", state.name,state);
if(state ==state.last())
break;
else
state=state.next();
end
endmodule*/

/*module test;
 enum {ADD,SUB,MUL,OR,AND,XOR} OPCODE;
int num1, num2;
int result;
initial
begin
OPCODE=SUB;
num1=30;
num2=60;
if(OPCODE == ADD)
result = num1+num2;
else if(OPCODE == SUB)
result=num1-num2;
else if(OPCODE == MUL)
result = num1*num2;
else if(OPCODE == OR)
result = num1|num2;
else if(OPCODE == AND)
result = num1&num2;
else if(OPCODE == XOR)
result = num1^num2; 
$display("num1=%0d, num2=%0d, result=%0d", num1,num2,result);
end
endmodule*/

/*module test;
 enum {IP1=10, IP2=31,IP4=51,IP5=60} IP_addr;
int dir=1;
initial
begin
IP_addr=IP2;
if(dir==1)
IP_addr=IP_addr.next;
//else if(dir==0)
IP_addr=IP_addr.pre;
$display("IP_addr=%od");
end
endmodule*/

/*module test;
typedef enum {init,read,write,brd,bwr} fsm_state_e;
fsm_state_e state;
int c;
initial
begin
state=read;
c=state;
state=1;
state=fsm_state_e'(5);
$cast(state,5);
if($cast(state,5))
$display("CASTING IS SCCESSFULL");
else
$display("CASTING IS FAILED");
end
endmodule*/

/*module test;
int i_num;
real r_num;
i_num = '(10.0-0.1);
r_num=rea1'(42);
endmodule*/

/*module test;
 enum {ADD,SUB,MUL,OR,AND,XOR} OPCODE;
int num1,num2;
int res;
initial
begin
num1=30;
num2=60;
begin
case(OPCODE)
ADD:res=num1+num2;
SUB:res=num1-num2;
MUL:res=num1*num2;
OR:res=num1||num2;
AND:res=num1&&num2;
XOR:res=num1^num2;
endcase
$display("result=%0d",res);
end
end
endmodule*/


/*module test;
typedef enum {ADD,SUB,MUL,OR,AND,XOR} opcode_dt;

struct {int num1,num2; int result; opcode_dt opcode;} op1;
initial
begin
op1.opcode=ADD;
op1.num1=50;
op1.num2=20;
if(op1.opcode ==ADD)
op1.result=op1.num1+op1.num2;
else if(op1.opcode==SUB)
op1.result=op1.num1-op1.num2;
else if(op1.opcode==MUL)
op1.result=op1.num1*op1.num2;
else if(op1.opcode==OR)
op1.result=op1.num1|op1.num2;
else if(op1.opcode==AND)
op1.result=op1.num1&op1.num2;
else if(op1.opcode==XOR)
op1.result=op1.num1^op1.num2;
$display("opcode=%s",op1.opcode);
$display("num1=%0d",op1.num1);
$display("num2=%0d",op1.num2);
$display("result=%0d",op1.result);
end
endmodule*/


/*module test;
typedef enum {ADD,SUB,MUL,OR,AND,XOR} opcode_dt;
struct {int num1,num2; int res; opcode_dt opcode;} op1;
initial
begin
op1.opcode=SUB;
op1.num1=50;
op1.num2=20;
begin
case(op1.opcode)
ADD:op1.res=op1.num1+op1.num2;
SUB:op1.res=op1.num1-op1.num2;
MUL:op1.res=op1.num1*op1.num2;
OR:op1.res=op1.num1|op1.num2;
AND:op1.res=op1.num1&op1.num2;
XOR:op1.res=op1.num1^op1.num2;
endcase
$display("result=%0d",op1.res);
$display("num1=%0d",op1.num1);
$display("num2=%0d",op1.num2);
$display("opcode=%s",op1.opcode);
end
end
endmodule*/



/*module test;
typedef enum {init,read,write,brd,bwr} fsm_state_e;
fsm_state_e pre_state, nxt_state;
fsm_state_e state = state.first;
initial
forever
begin
$display("%s:%d", state.name,state);
if(state==state.prev())
break;
state=state.next();
end
endmodule*/


/*module test;
string str;
initial
begin
str="MAVEN_SILICON";
str=str.tolower();
$display("character in 5th position is %s", str.getc(5));
str.putc(5,"-");
$display("%s", str.substr(6,str.len-1));
str={str,".com"};
str={{3{"w"}},".",str};
disp($sformatf("https://%s",str));
end

task disp(string s);
$display("at time t=%0t,%s", $time,s);
endtask
endmodule*/



/*package pkg;
int no_of_trans;
function void display(string s);
$display($time,"%s,n=%0d",s,no_of_trans);
endfunction
endpackage

module A;
import pkg ::*;
initial
begin
#1;
no_of_trans=10;
#1;
display("FROM MODULE A");
end
endmodule

module B;
import pkg ::*;
initial
begin
#4;
no_of_trans=20;
display("FROM MODULE B");
end
endmodule*/


/*package pkg1;
int no_of_trans=10;
endpackage

package pkg2;
int no_of_trans=30;
int value;
endpackage

module mem;
import pkg1::*;
import pkg2::*;
initial
begin
$display("MEM MODULE :n=%0d",pkg1::no_of_trans);
end
endmodule

module cpu;
import pkg1::*;
import pkg2::*;
initial
begin
$display("CPU MODULE :n=%0d",pkg2::no_of_trans);
end
endmodule*/


/*module test;


bit[31:0]var1=32'h12345678;
bit[1:0][15:0]var2=32'h12345678;
bit[3:0][7:0]var3=32'h12345678;
bit[1:0][3:0][3:0]var4=32'h12345678;
initial
begin
$display("var1=%h",var1);
$display("var[8]=%h",var1[8]);
$display("var2[1]=%h",var2[1]);
$display("var2[1][2]=%h",var2[1][2]);
$display("var3[1][2]=%h",var3[1][2]);
$display("var3[1]=%h",var3[1]);
$display("var4[1][2]=%h",var4[1]);
end
endmodule*/




/*module test;
int a;
real b;
real x;
initial
begin
a=12;
b=17;
x=a/b;
$display("number is %.2f",x);
end
endmodule*/



/*package pkg1;
int no_of_trans;
endpackage
package pkg2;
int no_of_trans;
endpackage

module A;
import pkg1::*;
import pkg2::*;
initial
begin
no_of_trans=30;
$display(" MODULE A")
end
endmodule

module B;
import pkg1::*;
import okg2::*;
initial
begin
no_of_trans=40;
$display(" MODULE B");
end
endmodule*/




/*module test;
string str,str1;
initial
begin
str="deepika";
$display("character in 5th position is %s", str.getc(5));
str.putc(5,"-");
$display("%s", str.substr(6,str.len-1));
str={str,".com"};
str1={{3{"w"}},".",str};
disp($sformatf("https://%s",str));
end
task disp(string s);
$display("at time t=%0t,%s",$time,s);
endtask
endmodule*/


/*package ram_pkg;
int number_of_transactions=1;
'include "ram_trans.sv"
'include "ram_gen.sv"
'include "ram_write_bfm.sv"
'include "ram_read_mon.sv"
'include "ram_model1.sv"
endpackage*/


/*module test;
bit [3:0][7:0] bytes [0:2];
initial
begin
bytes[0] = 32'd255;
//bytes[0][3]=8'd12;
//bytes[0][1][6]=1'b1;
$display("%h",bytes[0]);
end
endmodule*/


/*module test;
logic [31:0] msrc[5],mdst[5];
initial
begin
for(int i=0; i<$size(msrc); i++)
msrc[i]=i;
foreach(mdst[j])
mdst[j] = msrc[j]* 4;
end
endmodule*/


/*module test;
int mda[3][3]='{'{0,1,2},
'{3,4,5},'{6,7,8}};
initial
begin
foreach(mda[i,j])
$display("mda[%0d][%0d]=%0d",i,j,mda[i][j]);
end
endmodule*/


/*module test;
bit [31:0] msrc[5]={0,1,2,3,4},
mdst[5]={5,4,3,2,1};
initial
begin
if(msrc==mdst)
$display("msrc is equal to mdst");
else 
$display("msrc is not equal to mdst");
mdst[0:3]=msrc[0:3];
if(msrc[1:4]==mdst[1:4])
$display("msrc is equal to mdst");
else 
$display("msrc is not equal to mdst");
end
endmodule*/


/*module test;
int da1[],da2[];
initial
begin
da1=new[10];
foreach(da1[i])
da1[i]=i;
da2=da1;
da1=new[30](da1);
da1=new[100];
da2.delete();
end
endmodule*/


/*module test;
int qm1[$]={1,3,4,5,6};
int qm2[$]={2,3};
int k=2;
initial
begin
qm1.delete(1);
qm1.push_front(7);
qm2.push_back();
foreach(qm1[i])
$display(qm1[i]);
qm2.delete();
end
endmodule*/




/*module test;
int amem [int];
initial
begin
amem[2]=1;
amem[100]=5;
amem[5]=60;
amem[200]=89;
if(amem.exists(5))
$display("entry exists in mem, whose value is %d", amem[5]);
else
$display("no entry");
$display("number of entries in array is %0d", amem.num);
end
endmodule*/





/*module test;
int cnt,sa;
int da[]={10,1,8,3,5,5};

cnt = da.sum with (item>7);
sa = da.sum with (item==5);

int da[]={10,1,7,3,4,4};
da.reverse();
da.sort();
da.rsort();
da.shuffle();

endmodule*/

/*module tb;
bit [3:0] [7:0] stack [2][4];
bit stack;
initial
begin
foreach(stack[i])
foreach (stack[i][j])
begin
stack[i][j]=$random;
$display("stack[%0d][%0d]=0*%0h",i,j,stack[i][j]);
end
$display("stack =%p",stacK);
$display("stack[0][0[2] =0*%0h",stack[0][0][2]);
end
endmodule*/


/*module test;
int num1[],num2[];
int result[$];
initial
begin
num1=new[10];
num2=new[10];
foreach(num1[i])
begin
num1[i]=$urandom%50;
num2[i]=$urandom%20;
result.push_back(num1[i]+num2[i]);
end
$display("num1=",num1);
$display("num2=",num2);
$display("result=",result);
end
endmodule*/



/*module test;
enum {ADD,SUB,MUL,OR,AND,XOR}opcode;

int num1[],num2[];
int result[$];
initial
begin
opcode=SUB;
num1=new[10];
num2=new[10];
foreach(num1[i])
begin
num1[i]={$urandom}%50;
num2[i]=$urandom%20;
if(opcode==ADD)
result.push_back(num1[i]+num2[i]);
else if(opcode==SUB)
result.push_back(num1[i]-num2[i]);
else if(opcode==MUL)
result.push_back(num1[i]*num2[i]);
else if(opcode==OR)
result.push_back(num1[i]|num2[i]);
else if(opcode==XOR)
result.push_back(num1[i]^num2[i]);
end
$display(opcode.name);
$display("num1=",num1);
$display("num2=",num2);
$display("result=",result);
end
endmodule*/



/*module test;
int array[*];
bit[3;0]a=5;
int b=100;
string s="abc";
initial
begin]array[a]=100;
array[b]=1000;
array[s]=56;
end
endmodule*/


/*module test;
string a1[string];
string idx;
initial
begin 
a1={"APPLE:red","GRAPES:green","MANGO:yellow"};
$display("array=%p",a1);
$display("total entries is=%d",a1.num());
if(a1.exists("avacado"))
$display("yes it is");
if(a1.first(idx))
$display("first elsement of a1[%s]=%s",idx,a1[idx]);
if(a1.last(idx))
$display("last element of a1[%s]=%s",idx,a1[idx]);
idx="MANGO";
if(a1.next(idx))
$display("next element ofa1[%s]=%s",idx,a1[idx]);
if(a1.prev(idx))
$display("previous element of a1[%s]=%s",idx,a1[idx]);
end
endmodule*/



/*module test;
int ar[*];
int a=5;
bit[3:0]b=15;
string s="abc";
initial
begin
ar[a]=10;
ar[b]=67;
ar["abc"]=89;
$display(ar["abc"]);
foreach(ar[i]);
$display(ar[i]);
end
endmodule*/




/*module test;
bit[1:0] [3:0] pkd_da[]=new[3]({'h77,'h65,'h64});
initial
begin
$display("pkd_da=%p",pkd_da);
$display("pkd_da[%0d]=%0h",1,pkd_da[1]);
$display("pkd_da[%0d][%0d]=%0d",1,0,pkd_da[1][0]);
$display("pkd_da[%0d][%0d][%0d]=%0d",1,0,3,pkd_da[1][0][3]);
end
endmodule*/


/*module test;
int mem1[];
int mem2[]=new[6];
int mem3[]=new[4]({67,33,82,33});
initial
begin
$display("default size of initialised dynamic array mem1=%0d",$size(mem1));
mem1=new[5];
mem1={12,34,56,67,34};
$display("content of mem1%p",mem1);
foreach(mem2[i])
$display("mem2=%0p",mem2);
for (int i=0; i<$size(mem3); i++)
mem1=mem2;
$display("mem1 after copying mem2 %p", mem1);
mem2=new[20];
$display("mem2 after setting size to 20 %p", mem2);
mem1=new[25](mem1);
$display("mem1 after setting size to 25 and presenting the previous data %p",mem1);
$display("size of mem1 by using method size()=%0d", mem1.size());
mem1=new[mem1.size()*2](mem1);
$display("size of dynamic array mem1 after douling the size =%0d", mem1.size());
 mem1.delete();
$display("size of dynamic array mem1 after detecting =%0d", mem1.size());
end
endmodule*/


/*module test;
logic [31:0] array1[8],array2[7:0],array3[0:7];
initial
begin
foreach(array1[i])
array1[i]=i;
$display("%h",array1[0]);
foreach(array2[j])
array2[j]=j;
foreach(array3[k])
array3[k]=k;
end
endmodule*/


/*module test;
int da[],da1[];
initial
begin
da=new[2*10];
foreach(da[i])
da[i]=i;
$display("da=%p",da);
end
endmodule*/




/*module test;
int mem2d[][2];
int mem3d[][2];
int mem_DA[][];
initial
begin
mem2d=new[5];
foreach(mem2d[i,j])
mem2d[i][j]=j;
$display("mem1=%p",mem2d);
$display("2D matrix display using foreach loop");
foreach(mem2d[i,j])
$display("mem[%0d][%0d]=%0d",i,j,mem2d[i][j]);
$display("2D matrix display using for loop");
for(int i=0;i<5; i++)
for(int j=0; j<2; j++)
$display("mem[%0d[%0d]=%0d",i,j,mem2d[i][j]);
$display("2D matrix display in matrix form");
foreach (mem2d[i])
begin
foreach(mem2d[,j])
$write("%0d",mem2d[i][j]);
$display;
end
mem3d=new[3];
$display("3D matrix");
foreach(mem3d[i,j,k])
begin
mem3d[i][j][k]=$urandom%40;
$display("mem3d[%0d][%0d][%0d]=%0d",i,j,k,mem3d[i][j][k]);
end
mem_DA=new[5];
foreach(mem_DA[i])
mem_DA[i]=new[3];
$display("2D matrix display using 2 dynamic dimentions");
foreach(mem_DA[i,j])
begin
mem_DA[i][j]=$random%40;
$display("mem_DA[%0d][%0d]=%0d",i,j,mem_DA[i][j]);
end
end
endmodule*/



/*module test;
int q1[$];
int q2[$]={12,34,56,78,67};
int q4[$:128];
int result [];
int k,q_size;
initial
begin
$display("size of un-intialised unbounded queue=%0d",q1.size());
$display("size of un-initialised bounded queue=%0d",q3.size());
$display("size of intialised bounded queue=%0d",q2.size());
$display("push front mechanism in q1");
for(int i=0;i<6; i++)
begin
q1.push_front(i+10);
$display(q1)
end
$display("push back mechanism in q3");
for(int i=0; i<4; i++)
begin
q3.push_back(i+10);
$display(q3)
end
$display("display of using %%p");
$display("content of queue1=%p",q1);
$display("content of queue2=%p",q2);
$display("content of queue3=%p",q30;
$display("size of q1=%0d,q2=%0d,q3=%0d",q1.size,$size(q2),$size(q3));
k=1;
q1.insert(q1.size,q2[k]);
$display('content of q1 after inserting q2[%0d]=%0p",k,q1);
k=2;
q1={q1,q2[k]};
$display("content of q1 after inserting q2[%0d]=%p',k,q1);
$display("popping queue using foreach loop");
result=new[q1.size()];
foreach {q1[i])
begin
result[i]=q1.pop_front;
$display("q1 after popping q1[%0d]=%p",new imax=%0d",i,q1,q1.size());
$display("result =%p",result);
end
$display(poppin*/



/*module top;
int i_num1;
int r_num2;
initial
begin
i_num1=int '(10.0-1.0);
$display("the integer value is:%0d",i_num1);
r_num2=int'(5/3);
$display("the integer value is:%0d",r_num2);
end
endmodule*/













//ASSIGNMENT 1 ANSWERS



/*module test;
int da[]={10,2,3,4,7,6,8};
initial
begin
da.sort();
$display("sorting of array:");
end
endmodule*/

/*module test();
typedef enum bit[2:0] {ENUM_VAL0, ENUM_VAL1,ENUM_VAL2, ENUM_VAL3} my_enum_t;
initial
begin
my_enum_t my_enum_var=ENUM_VAL3;
$display("current enum value:%0s", my_enum_var.name());
my_enum_var=my_enum_var.next();
$display("next enum value:%0s", my_enum_var.name());
end
endmodule*/


/*module test;
int k, q[$] ='{1,2,3,4,5,6};
initial
begin
foreach(q[i])
begin
k=q.pop_back();
$display("%d",k);
end
$display("%p",q);
end
endmodule :test*/


/*module test;
int k, q[$]='{1,2,3,4,5,6};
initial
begin
for(int i=0; i<7; i++)
begin

k=q.pop_back();
$display("%0d",k);
end
$display("%0p",q);
end
endmodule*/


/*module test;
int packet[5]={1,2,3,4,5};
int result;
result=packet.sum with (int'(item%2==0));
$display("result=%0d");
result=packet.product with (int'(item%2==0)?item:1));
$display("result=%0d");
endmodule*/




/*module test;
int q1[$]='{0,1,5,6,7,8};
int q2[$]='{2,3,4};
initial
begin
q1={q1,q2};
//q1={q1[0:1],q2[2:$]};
$display("%p",q1);
end
endmodule*/













/*module test();
int a=5,b=7;
int sum,double;
function int summation(input[3:0]x,input[3:0]y,output[5:0]z);
summation=x+y;
z=2*summation;
endfunction
function void display();
$display("sum is%0d and doubled value is %0d",sum,double);
endfunction
initial
begin
sum=summation(a,b,double);
display();
end
endmodule*/


/*module test;
function integer mult(int a,int b);
if((a==0)||(b==0))
begin
$display("dont multiply with zero");
return 'hx;
$display("attempt made for multiplaying with zero is failed");
end
else
mult=a*b;
endfunction
task print_status(int errors);
if((errors==0))
begin
$display("no errors have been reported");
return;
$display("the number of errors is %0d",errors);
end
endtask
endmodule*/


/*module test;
int da[];
initial
begin
da=new[50];
foreach(da[i])
da[i]={$random}%50;
$dsiplay("da=%p",da);
da=da.find with (item>30);
$display("find item greater then : %0d", da);
end
endmodule*/




/*module test;
initial
begin
int da[]={1,5,3,4,5,6,7};
for(int i=0; i<$size(da); i++)
begin
for(int j=i+1; j<$size(da); j++)
begin
da[i]=da[i]+da[j];
da[j]=da[i]-da[j];
da[i]=da[i]-da[j];
$display("queue=%0d",da[i]);
end
$display("da[i]=%d",da[i]);
$display("%p",da);
end
end
endmodule*/

/*module test;
task double(int a,string s);
#5;
$display($time,"s=%s a=%d", s,a);
endtask
initial
fork
begin
double(5,"FROM THREAD 1:");
end
begin
double(4,"FROM THREAD 2:");
end
join
endmodule*/



/*module test;
task automatic double(int a,string s);
#5;
a=a*2;
$display($time, " s=%s a=%d", s,a);
endtask
initial
fork
begin
double(5, " FROM THREAD 1:");
end
begin
#2;
double(4," FROM THREAD 2:");
end
join
endmodule*/




/*module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/





/*module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(ref int a,ref int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       //mult(2,3,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       //mult(2,4,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/






/*module test;
 int d,result;
  int a=2,b=3;
  
   function  mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/



/*
module test;
 int d,result;
  int a=2,b=3;
  
   task automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endtask
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/
/*
module test;
 int d,result;
  int a=2,b=3;
  
   task automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
        $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endtask
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/

/*class pass_by_ref;
  int refr=2;
  int val=2;

   function automatic int check_refer(ref int r);
                  $display("pass by ref");
                  $display("initial value of refr=%d",r);
                  r++;
                  $display("after incrementing %d",r);
  endfunction
  function int check_value(int v);
                  $display("pass by value");
                  $display("initial value of value=%d",v);
                  v++;
                  $display("after incrementing %d",v);
   endfunction
endclass

pass_by_ref h1;
module test;
 initial
  begin
   h1=new();
   h1.check_refer(h1.refr);
   h1.check_value(h1.val);
   $display("inside memory");
   $display("%d",h1.refr);
   $display("%d",h1.val);
   end
endmodule*/

/*
module test;
 task dummy_task(input int x,string str);
   fork
     begin
       #x;
     end
     begin
       #10;
     end
    join_any
    disable fork;
    $display("%s:%t",str,$time);
    endtask
   initial
    fork
      begin
        #2;
        dummy_task(5,"call_1");
       end
       begin
        #1;
        dummy_task(15,"call_2");
       end
     join
  endmodule
*//*
module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/
/*
module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(ref int a,ref int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       //mult(2,3,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       //mult(2,4,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/
/*
module test;
 int d,result;
  int a=2,b=3;
  
   function  mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/

/*module test;
 int d,result;
  int a=2,b=3;
  
   task automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endtask
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/



/*module test;
int ma=20;
function void pass_by_value(int fa);
fa=fa*2;
$display("inside the function pass_by_value fa=%d", fa);
endfunction : pass_by_value

function automatic void pass_by_ref(ref int fa);
fa=fa*2;
$display(" inside the function pass_by_ref fa=%d",fa);
endfunction:pass_by_ref

initial
begin
pass_by_value(ma);
$display("after calling the function pass_by_value ma=%d", ma);
pass_by_ref(ma);
$display("after calling the function pass_by_ref ma=%d", ma);
end
endmodule:test*/







 


/*interface  fa_if();
logic a,b,c,cout,sum;
modport DUV (input a,b,c, output cout,sum);
modport TEST (output a,b,c, input cout,sum);
endinterface

module full_adder(fa_if.DUV test_if);
assign test_if.sum=test_if.a^test_if.b^test_if.c;
assign test_if.cout=(test_if.a&test_if.b)|(test_if.b&test_if.c)|(test_if.a&test_if.c);
endmodule

  module testcase(fa_if.TEST test_if);
initial
begin
{test_if.a,test_if.b,test_if.c}=3'b000;
$monitor(" input abc=%b%b%b,output cout=%b,sum=%b", test_if.a,test_if.b,test_if.c,test_if.cout,test_if.sum);
#20;
{ test_if.a,test_if.b,test_if.c}=3'b010;
#20;
{test_if.a,test_if.b,test_if.c}=3'b011;
#20;
{test_if.a,test_if.b,test_if.c}=3'b110;
end
endmodule

module top;
fa_if IF();
full_adder RTL(IF);
testcase TB (IF);
endmodule*/


/*interface fa_if();
logic a,b,c,cout,sum;
task load;
input [2:0]data;
a<=data[2];
b<=data[1];
c<=data[0];
endtask
modport DUV (input a,b,c, output cout,sum);
modport TEST (output a,b,c, input cout,sum);
endinterface

module full_adder(fa_if.DUV test_if);
assign test_if.sum=test_if.a^test_if.b^test_if.c;
assign test_if.cout=(test_if.a&test_if.b)|(test_if.b&test_if.c)|(test_if.a&test_if.c);
endmodule

  module testcase(fa_if.TEST test_if);
initial
begin
test_if.load(3);
$monitor(" input abc=%b%b%b,output cout=%b,sum=%b", test_if.a,test_if.b,test_if.c,test_if.cout,test_if.sum);
#20 test_if.load(4);
#20 test_if.load(7);
#20 test_if.load(5);
#20 test _if.load(2);
#20 test_if.load(1);
#20 test_if.load(0);
#20 test_if.load(6);
end
endmodule


module top;
fa_if IF();
full_adder RTL(IF);
testcase TB (IF);
endmodule*/


/*class grand_parent;
virtual task send;
//drives GOOD
endtask:send
endclass:grand_parent


class parent extends grand_parent;
task send;
//drives BAD
endtask:send
endclass:parent


class grand_child extends parent;
task send;
//drives with DELAY
endtask:send
endcalss:grand_child



grand_parent gp=new();
parent p=new();
grand_child gc=new();


module test();
initial
begin
gp.send;
p.send;
gc.send;
end
endmodule:test*/



/*class fruits;
string frt_name;
int frt_price;
int total_price;
endclass:fruits

fruits f1,f2;
module test;
int qty;
initial
begin
f1=new();
f1.frt_name="MANGO";
f1.frt_price=100;
qty=2;
f1.total_price=f1.frt_price*qty;
$display("name:%s,price=%0d,qty=%0d,total_price=%0d",f1.frt_name,f1.frt_price,qty,f1.total_price);
$display("object handle f1:%p",f1);
$display("object handle f2:%p", f2);
end
endmodule*/



/*class fruits;
string frt_name;
int frt_price;
int qty_reg;
int total_price;
endclass:fruits


fruits f1,f2,f3;

module test;
int amount;
initial
begin
f1=new();
f1.frt_name="MANGO";
f1.frt_price=100;
f1.qty_reg=2;
f1.total_price=f1.frt_price * f1.qty_reg;
$display(f1);
f2=new();
f2.frt_name="APPLE";
f2.frt_price=200;
f2.qty_reg=3;
f2.total_price=f2.frt_price*f2.qty_reg;
$display(f2);
f2=new();
f3.frt_name="ORANGE";
f3.frt_price=80;
f3.qty_reg=4;
f3.total_price = f3.frt_price* f3.qty_reg;
$display(f3);
amount=f1.total_price+f2.total_price+f3.total_price;
$display("total amount=%p", amount);
end
endmodule*/



/* class fruits;
string frt_name;
int frt_price;
int total_price;
function void disp(input int qty);
$display("name:%s,price=%0d,total_price=%0d", frt_name,frt_price,qty,total_price);
endfunction
endclass:fruits

fruits f1;
module test;
int qty;
initial 
begin
f1=new();
f1.frt_name="MANGO";
f1.frt_price=100;
qty=2;
f1.total_price=f1.frt_price*qty;
f1.disp(qty);
$display("object handle f1:%p",f1);
end
endmodule*/



/*class fruits;
string frt_name;
int frt_price;
int total_price;
int total_prie;
function new();
frt_name="MANGO";
frt_price=100;
endfunction

function void disp(input int qty);
$display("name=%s,price=%0d,qty=%0d,total_price=%0d",frt_name,frt_price,qty,total_price);
endfunction
endclass:fruits
fruits f1;
module test;
int qty;
initial
begin
f1=new();
qty=2;
f1.disp(qty);
end
endmodule*/



/*class fruits;
string frt_name;
int frt_price;
int total_price;
function new(input string name,input int price);
frt_name=name;
frt_price=price;
endfunction

function void cal_Tp(input int qty);
total_price=frt_price*qty;
endfunction

function void disp (input int qty);
$display("name=%s,price=%0d,qty=%0d,total_price=%0d",frt_name,frt_price,qty,total_price);
endfunction
endclass:fruits


fruits f1;
module test;

int qty;
initial
begin
f1=new("mango",100);
qty=2;
f1.disp(qty);
end
endmodule*/


/*class fruits;
string frt_name;
int frt_price;
int total_price;

function new(input string frt_name="mango", input int frt_peice=100);
this.frt_name=frt_name;
this.frt_price=frt_price;
endfunction

function void cal_Tp (input int qty);
total_price=frt_price*qty;
endfunction

function void disp(input int  qty);
$display("name=%s,price=%p,qty=%0d,total_price=%od", qty,total_price,frt_nqme,frt_price);
endfunction

endclass:fruits

fruits f1,f2,f3,f4;
module test;
int qty,total_amount;
initial
begin
f=new();
qty=2;
f1.ca1_Tp(qty);
f1.disp(qty);
f2=new("APPLE", 200);
qty=4;
f2.cal_Tp(qty);
f2.disp(qty);
f3=new("ORANGE");
qty=3;
f3.cal_Tp(qty);
f3.disp(qty)
end
endmodule*/



/*             class parent_trans;
bit[7:0] header, payload[], parity;
emdclass:parent_trans

class error_trans extends parent_trans;
bit error_parity;
endclass:error_trans


error_trans error_h;
error_h=new();
error_h.error_parity=1;*/


/*class transaction;
int a;
endclass:transaction
class extend_trans extends transaction;

int b;
endclass:extend_trans
transaction trans_h;
module test();
initial
begin
trans_h=extend_trans:new();
end
endmodule:test*/


/*virtual class packet;
bit [31:0] arr[0:3];
pure virtual function void driver_pkt_one();
endclass:packet

class ipv4 extends packet;
bit [7:0] arr_4 [7:0];
virtual function void divider_pkt_one();
arr_4[0]=super.arr[0] [7:0];
arr_4[1]=super.arr[0][15:8];
arr_4[2]=super.arr[0][23:16];
arr_4[3]=super.arr[0][31:24];
endfunction :divider_pkt_one
endclass:ipv4

class ipv6 extends packet;
bit[15:0] arr_2[0:1];
virtual function void divider_pkt_one();
arr_2[0]=super.arr[0][15:0];
arr_2[1]=super.arr[0][31:16];
endfunction:divider_pkt_one
endclass:ipv6*/



/*class transaction;
rand bit [0:7] data;
rand bit [0:1] ch;
function void post_randomize;
$display("data is %b", data);
$display("channel is %b", ch);
endfunction:post_randomize

endclass:transaction
initial
begin
int success;
trasaction trans_h=new();
success=trans_h.randomize();*/




/* class test;
int a;
static int b;
function void incr;
a++;
b++;
$display("display the value is %od");
endfunction
endclass
module test;
int t1,t2;
initial
begin
t1=new();
t2=new();
t1.incr;
t2.incr;
end
endmodle:test*/


/*class account_c;
int balance=0;
function int summary;
return ba;lance;
endfunction:summary
endclass"account_c


class linkd account extends account_c;
int balance;
function int summary;
return balance+super.balance;
endfunction:summary
endclass:linked_account*/


/*class trasaction;
rand bit [15:0] pktlength;
constraint undersize[pktlength<=16'd64;]
endclass:transaction
transaction trans_h=new;
initial
begin
int success;
if(trans_h.pktlength.rand_mode());
begin
for(int i=0; i<16; i++)
success=trans_h.randomize();
end
trans_h.undersize.constraint_mode(0);
success=trans_h.randomize() with {pktlength>64;};
trans_h undersize constraint_mode(1);
success=trans_h.randomize();
end*/


/*class vector #(int size=1);
bit [size-1:0] a;
endclass:vector
vector#(10) vten;
vector #(.size(2))vtwo;
typedef vector#(4) vfour;*/

/*class transaction;
static int i;
static function void stat_fun();
int b;
i++;
b++;
$display("stat_fun , i=%od,b=%od", i,b);
endfunction:stat_fun

function static void fun_stat();
int a;
j++;
a++;
$display("fun_stat,j=%0d,a=%0d", j,a);
endfunction : fun_stat
endclass:transaction*/






/*module test;
initial
begin
#10;
fork
begin
#20;
end
begin
#40;
end
begin
#50;
end
join
$display("exit is at time", $time);
end
endmodule*/






















































 

/////////////////////////////////////////////ASSIGNMENT33333333333333333////////////////////////////////////////////////////////////////////////////




/*class base;
 static int i;
  
  static function static get();
    int a;
	 a++;
	 i++;
	 $display(a);
	 $display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/

//a2

/*class base;
  
  static function static get();
    int a;
	 a++;
	 $display(a);
	 //$display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
  
  //a3

/*class base;
 int i;
  
  static function get();
    static int a;
	 a++;
	 //i++;
	 $display(a);
	 //$display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
  
//a4

/*class base;
 int i;
  
  static function get();
    int a;
	 a++;
	 //i++;
	 $display(a);
	 //$display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
  
 
 //a5
  
/*class base;
  int i;
  
  static function get();
    int a;
	 a++;
	 i++;
	 $display(a);
	 $display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test();
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
 
  //a6
  
 /* class base;
 static int i;
  
  static function get();
    int a;
	 a++;
	 i++;
	 $display(a);
	 $display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/

  
//a7
  
 /* class base;
   static int i;
  
  function static get();
    int a;
	 a++;
	 i++;
	 $display(a);
	 $display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
  
  //a8
 /* class base;
  int i;
  
   function static get();
    int a;
	 a++;
	 i++;
	 $display(a);
	 $display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
  
  //a9
  
  /*class base;
   int i;
  
  function static get();
    int a;
	 a++;
	// i++;
	 $display(a);
	// $display(i);
 endfunction
endclass
 
 base b1_h,b2_h;
  
  module test;
    initial
	 begin
	  b1_h=new();
	  b2_h=new();
	  b1_h.get();
	  b1_h.get();
	  b2_h.get();
	 end
  endmodule*/
 
  //a10i

  /*class trans;
  int i;
   function new();
   i=10;
   endfunction
   endclass
   
   class ex_trans1 extends trans;
    int i;
	
	function new(int i);
	 //super.new(i);
	 this.i=i;
	 endfunction
	 endclass
	 
	 ex_trans1 e_h;
	 
	 module abc();
	  initial
	   begin
	     e_h=new(10);
		 $display("%p",e_h);
		end
	endmodule*/
	
//a11

/*  class trans;
   int i;
   function new(int i);
   this.i=i;
   endfunction
   endclass
   
   class ex_trans1 extends trans;
    int i;
	
	function new(int i);
	 super.new(i);
	 this.i=20;
	 endfunction
	 endclass
	 
	 ex_trans1 e_h;
	 
	 module abc();
	  initial
	   begin
	     e_h=new(10);
		 $display("%p",e_h);
		end
	endmodule*/	
//a12

 /*class trans;
    int i;
   function new(int i=10);
   this.i=i;
   endfunction
   endclass
   
   class ex_trans1 extends trans;
    int i;
	
	function new();
	 i=20;
	 endfunction
	 endclass
	 
	 ex_trans1 e_h;
	 
	 module abc();
	  initial
	   begin
	     e_h=new();
		 $display("%p",e_h);
		end
	endmodule*/
	
	//a13

/*class trans;
   int i;
   function new(int i=10);
   i=10;
   endfunction
   endclass
   
   class ex_trans1 extends trans;
    int i;
	
	function new();
	 i=20;
	 endfunction
	 endclass
	 
	 ex_trans1 e_h;
	 
	 module abc();
	  initial
	   begin
	     e_h=new();
		 $display("%p",e_h);
		end
	endmodule*/
	
	//a14

/*class trans;
    int i;
   function new();
   i=10;
   endfunction
   endclass
   
   class ex_trans1 extends trans;
    int i;
	
	function new();
	 i=20;
	 endfunction
	 endclass
	 
	 ex_trans1 e_h;
	 
	 module abc();
	  initial
	   begin
	     e_h=new();
		 $display("%p",e_h);
		end
	endmodule*/
	
	//a15

	/*class trans;i
	 virtual task send();
	 $display("in class trans");
	 endtask
	 endclass
	 
	 class ex_trans1  extends trans;
	   virtual task send();
	      $display("in class ex_trans1");
		  endtask 
	    endclass
		
		class ex_trans2  extends ex_trans1;
	      task send();
	      $display("in class ex_trans2");
		  endtask 
		endclass
		
		trans b_h;
		ex_trans1 ex1_h;
		ex_trans2 ex2_h;
		 
		 module inheritance;
		 initial
		  begin
		   ex1_h.new();
		   ex2_h.new();
		   b_h=ex2_h;
		   b_h.send();
		   end
		   endmodule*/
		   
		   //a16
		
	/*class trans;
	 virtual task send();
	 $display("in class trans");
	 endtask
	 endclass
	 
	 class ex_trans1  extends trans;
	   virtual task send();
	      $display("in class ex_trans1");
		  endtask 
	    endclass
		
		class ex_trans2  extends ex_trans1;
	      task send();
	      $display("in class ex_trans2");
		  endtask 
		endclass
	 
	  trans b_h;
		ex_trans1 ex1_h;
		ex_trans2 ex2_h;
		 
		 module inheritance;
		 initial
		  begin
		   ex1_h.new();
		   ex2_h.new();
		   b_h=ex1_h;
		   ex1_h=ex2_h;
		   b_h.send();
		   end
		   endmodule*/
		   
  //a17
  /* class trans;
	 virtual task send();
	 $display("in class trans");
	 endtask
	 endclass
	 
	 class ex_trans1  extends trans;
	   virtual task send();
	      $display("in class ex_trans1");
		  endtask 
	    endclass
		
		class ex_trans2  extends ex_trans1;
	      task send();
	      $display("in class ex_trans2");
		  endtask 
		endclass
	 
	  trans b_h;
		ex_trans1 ex1_h;
		ex_trans2 ex2_h;
		 
		 module inheritance;
		 initial
		  begin
		   ex1_h.new();
		  ex2_h.new();
		   //b_h=ex1_h;
		   ex1_h=ex2_h;
		   b_h.send();
		   end
		   endmodule*/
		   
	//a18
	/*class trans;
	 virtual task send();
	 $display("in class trans");
	 endtask
	 endclass
	 
	 class ex_trans1  extends trans;
	   virtual task send();
	      $display("in class ex_trans1");
		  endtask 
	    endclass
		
		class ex_trans2  extends ex_trans1;
	      task send();
	      $display("in class ex_trans2");
		  endtask 
		endclass
	 
	  trans b_h;
		ex_trans1 ex1_h;
		ex_trans2 ex2_h;
		 
		 module inheritance;
		 initial
		  begin
		   ex1_h.new();
		   //ex2_h.new();
		   b_h=ex1_h;
		   //ex1_h=ex2_h;
		   b_h.send();
		   end
		   endmodule*/
	 //a19
	/* class AB;
	   int i =1;
	   endclass
	   
	   AB a1;
	   module test();
	    initial
		 begin
		  repeat(2)
		    begin 
			 AB a2=new();
			 a1=new();
			 a1.i++;
			 a2.i++;
			 $display("disp_1 -- a1.i =%0d ,a2.i=%0d",a1.i,a2.i);
			 a1.i++;
			 a2.i++;
			 $display("disp_2 -- a1.i =%0d ,a2.i=%0d",a1.i,a2.i);
			 end
			 end
			 endmodule*/
			 
			 //a20
	/*		 class AB;
			   int i;
			   pure virtual function void disp();
			   endclass
			   class BC extends AB;
			    int j;
				 function void disp(int z);
                   j=z;
                  $display("%0d",j);
                 endfunction
             endclass
			 class CD extends AB;
			   int k;
			   function void display(int z);
			    k=z;
				$display("%0d",k);
				endfunction 
				endclass
				
				AB a_h=new();
				BC b_h=new();
				CD c_h=new();
				
				module test();
				initial
				begin
				a_h.disp();
				b_h.disp(2);
				c_h.disp(3);
				end
				endmodule*/
   //a21
/* class AB;
  rand int i;
  task xyz(string s);
    fork 
      begin 
           #(i);	
       end
    begin	   
	 #(20);
	   $display("in object of $s,29ns delay is completed ",s);
	  end
	  join_any
	  
	  disable fork;
	  endtask
	  endclass
	  
	  AB a1=new();
	  AB a2=new();
	  
	  module test;
	   initial 
	   begin
	    a1.i=5;
		a2.i=30;
		 fork 
		 a1.xyz("a1");
		 a2.xyz("a2");
		 join
		 end
		 endmodule*/
		 
	//a22

   /*class AB #(type T=int, int width=8);
     T i;   
	 bit[width-1:0]b;
	 endclass
	 
	 AB #(int,8)a_h1;
	 AB #(real,16)a_h2;
	 AB a_h3;*/


   

                                                                                                                                                        

  /*class trasaction;
bit [2:0] queue [$];
rand bit [2:0] addr;
constraint index_val {if(queue.size!=0)
foreach(queue[i])
addr!=queue[i];}
function void post_randomize();
queue.push_back(addr);
if(queue.size==8)
queue.delete();
endfunction:post_randomize
endclass:trasaction

trasaction trans_h;

module test();
initial
begin
int success;n


trans_h=new();
repeat(10)
begin
success=trans_h.randomize();
$display("addr:%0d", trans_h.addr);
end
end
endmodule*/
n

/*class trasaction;n

int array[];
randc int unsigned index;
constraint index_val {index<array.size();}n

function int rand_index;n

return array[index];n

endfunction:rand_indexnn


endclass:trasaction

trasaction  trans_h;n
n


module test();
initial
begin
trans_h=new();
int success;
trans_h.array={2,3,4,5,6,7,9,11,14,15,19,24,29};n

repeat(10)
begin
success=trans_h.randomize();n

$display(" the random index:%0d", trans_h.index);
$display("the value in array:%0d", trans_h.rand_index);
end
endn

endmodule:test*/

/*class packet;
rand bit [3:0] addr [10];
constraint addr_range{foreach(addr[i])
foreach(addr[j])
if(i!=j)
llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /home/cad/eda/SYNOPSYS/VCS/vcs/T-2022.06-SP1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /home/cad/eda/SYNOPSYS/VCS/vcs/T-2022.06-SP1/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
addr[i]!=addr[j];}
endclass:packet

packet pkt_h;

module test;
initial
begin
packet pkt_h;
pkt_h=new();
repeat(2)
begin
pkt_h.randomize();
$display("addr:%p", pkt_h.addr);
end
end
endmodule:test*/


                                                                                                               



/*class packet;
rand bit [3:0]addr[10];
constraint addr_range{unique {addr};}
endclass:packet

packet pkt_h;
module test;
initial
begin
packet pkt_h;
pkt_h=new();
repeat(2)
begin
pkt_h.randomize();
$display("addr:%p", pkt_h.addr);
end
end
endmodule:test*/


/*class trasaction;
rand bit [15:0] pkt_length;
constraint oversize{pkt_length inside{[100:500]};}
endclass:trasaction
class trans_h extends trasaction; 
constraint oversize{pkt_length inside{[500:100]};}
endclass:trans_h

trans_h test_h;

module test();
initial
begin
test_h=new();
assert(test_h.randomize());
$display("pktlength for green is %d", test_h.pkt_length);
end
endmodule*/





/*class trasaction;
rand bit [8:0] addr;
constraint abc{addr inside {[1:34],127,[129:1056],[192:202],[257:260]};}
endclass:trasaction
 
trasaction trans_h;

module test();
initial
begin
trans_h=new();
trans_h.randomize();
$display("address is %d", trans_h.addr);
end
endmodule*/

      /*class trasaction;
rand bit[7:0] a;
constraint abc {a inside {[34:43]};}
//constraint adc {a>40};
endclass:trasaction
 trasaction text_h;
module test;
initial
begin
text_h=new();
begin
text_h.randomize();
$display("address is %d", text_h.a);
end
end
endmodule*/
  
/*class trasaction;
rand bit [7:0] a;
constraint abd {a inside {[8'h01,8'h02,8'h03,8'h04,8'h05]};}
endclass:trasaction

trasaction trans_h;

module test;
initial
begin
trans_h=new();
trans_h.randomize();
$display("address is %d", trans_h.a);
end
endmodule*/



/*class trasaction;

rand var1;
constraint abc{ var1 inside {[0:50]};}
endclass:trasaction

trasaction trans_h;
module test;
initial
begin
var1=0;
assert(var1_constraint.randomize())*/

/*class trasaction;
rand bit a;
rand bit [3:0] b;
constraint valid { (a==0) -> (b==0); solve a,before b;}
endclass:trasaction
trasaction tr_h;
module test();
initial
begin
tr_h=new();
assert(tr_h.randomize());
end
endmodule*/

 /*class trasaction;
rand int vlantag;
constraint tag { vlantag dist {7:=5,[11:20]:=3,[26:30]:/5};}
endclass:trasaction
trasaction trans_h=new();

 module test;
initial
begin
int success;
success=trans_h.randomize();
$display("tag is %d", trans_h.vlantag);
end
endmodule*/

/*class trasaction;
rand int vlantag;
bit mode;
constraint tag { mode==1'h1 -> vlantag<96; mode==1'h0-> vlantag<1248;}
endclass:trasaction
trasaction trans_h=new;
module test(); 
initial
begin
int success;
trans_h.mode=1'h1;
success=trans_h.randomize();
 $display("tag is %d", trans_h.vlantag);
end
endmodule*/



/*class trasaction;
rand bit[7:0] a;
constraint abc {a inside {[25:50]};}
constraint adc {a>40;}
endclass:trasaction


 trasaction text_h;


module test;
initial
begin
text_h=new();
begin
text_h.randomize();
$display("address is %d", text_h.a);
end
end
endmodule*/









////////////////////////////////////////////////////////ASSIGNMENT44444444444444444444444444/////////////////////////////////////////////////////////


 














/*class parent;
rand bit [2:0]a;
constraint a_size {a==3;}
endclass

class child extends parent;
rand bit [2:0]a;
constraint a_size {a==2;}
constraint c_size {super.a==a;}
endclass


parent p1_h;
child ch1_h;
module parent_child_same_prop;
initial
begin
ch1_h=new();
for(int i=0; i<7; i++)
begin
assert(ch1_h.randomize());
$display("ch1_h:%p",ch1_h);
end
end
endmodule*/



/*class parent;
rand bit [2:0] a;
constraint a_size {a==3;}
endclass

class child1 extends parent;
rand bit [2:0] a;
constraint b_size {a==2;}
constraint c_size { super.a==a;}
endclass


parent p1_h;
child1 ch1_h;

module parent_child_same_prop;
initial
begin
ch1_h=new();
for(int i=0; i<7; i++)
begin
assert(ch1_h.randomize());
$display("ch1_h:%p", ch1_h);
end
end
endmodule*/






/*class parent;
rand bit [2:0] a;
constraint a_size {a<3;}
endclass



class child1 extends parent;
rand bit [2:0] a;
constraint a_size {a<3;}
endclass


parent p1_h;
child1 ch1_h;


module parent_child_same_prop;
initial
begin
ch1_h=new();
for(int i=0; i<7; i++)
begin
assert(ch1_h.randomize());
$display("ch1_h:%p", ch1_h);
end
end
endmodule*/


/*class parent;
rand bit [2:0]a;
constraint a_size {a<3;}
endclass

class child1 extends parent;
rand bit [2:0]a;
constraint a_size {a<5;}
endclass


parent p1_h;
child1  ch1_h;


module parent_child_same_prop;
initial
begin
ch1_h=new();
for(int i=0; i<7; i++)
assert(ch1_h.randomize());
$display("ch1_h:%p", ch1_h);
end

endmodule*/




/*class parent;
rand bit [2:0]a;
constraint a_size {a<3;}
endclass

class child1 extends parent;
rand bit [2:0]a;
constraint b_size {a<5;}
endclass



parent p1_h;
child1 ch1_h;


module parent_child_same_prop;
initial
begin
ch1_h=new();
for( int i=0; i<7; i++)
begin
assert(ch1_h.randomize());
$display("ch1_h:%p", ch1_h);
end
end
endmodule*/


/*class e_c;
rand int a[];
int j=0, k=0;
constraint size {a.size==9;}
constraint c1 {foreach(a[i]) a[i]==fun(i);}
function int fun (int i);
if(i%2==0)
begin
if(j==1)
begin
fun=i-1;
j=0;
end
else
begin
fun=i;
j++;
end
end
else
begin
if(k==0)
begin
fun=i+1;
k=1;
end
else
begin
fun=i;
k=0;
end
end
endfunction
endclass



e_c e_oe;


e_oe=new();


module tb;
intial
begin
assert(e_oe.randomize());
$display(e_oe);
end
endmodule*/





/*module tb;
class abc;
rand int a[];
constraint size {a.size==10;}
constraint mirr{foreach (a[i]) if(i%2==0) a[i]==0; else a[i]==(i+1)/2;}
endclass



abc m_h=new();
initial
begin
assert(m_h.randomize());
$display("%p", m_h);
end
endmodule*/


/*module factorial;
class factt;
rand int num[];
constraint size {num.size==5;}
constraint fact_num{foreach(num[i]) num[i]==fact((i+1)*2);}



function int fact (int j);
if(j==0)
fact=1;
else
fact=j*fact(j-1);
endfunction
endclass


factt f=new();

initial
begin
assert(f.randomize());
$display("%p",f);
end
endmodule*/



/*module factorial;
class factt;
rand int num[];
constraint size{num.size==5;}
constraint fact_num{foreach (num[i]) num[i]==fact(((i+1)*2)==1);}


function int fact (int j);
if(j==0)
fact=1;
else
fact=j*fact(j-1);
endfunction
endclass


factt f=new();
    


initial
begin
assert(f.randomize());
$display("%p", f);
end
endmodule*/






/*module tb;
class  real_num[];
real_num[10];
constraint size {real_num.size==10;}
constraint real_num {foreach(real_num[i]) real_num[i] inside {[1356:2693]};}


function void post_randomize();
foreach (num[i])
begin
num[i]=real_num [i]/1000.0;
$display("real=%f", num[i]);
end
endfunction
endclass


real_num  rn=new();
initial
begin
assert(rn.randomize());
end
endmodule*/















///////////////////////////////////////////////////////////////////ASSIGNMENT5555555555555555555555555555555///////////////////////////////////////////












/*module threads();
initial
begin
fork
for( int H1_pointer=0; H1_pointer<=2; H1_pointer++)
begin
#1  $display($time, " FIRST LOOP: vlaue of H1=%g", H1_pointer);
end
for(int D1_channel=2; D1_channel>=0; D1_channel--)
begin
#1 $display($time, " SECOND LOOP: vlaue of D1=%g", D1_channel);
end
join
$display("@%g ouside of FORK-JOIN\n", $time);
#3 $finish;
end
endmodule*/





/*module theads();
initial
begin
fork
for( int H1_pointer=0; H1_pointer<=2;
H1_pointer++)
begin
#1 $display($time, " FIRST LOOP: value of H1=%g", H1_pointer);
end
for( int D1_channel=2; D1_channel>=0;
D1_channel--)
begin
#1 $display($time," SECOND LOOP: vlaue of D1=%g", D1_channel);
end
join_any
$display("@%g outside of frok-join-any\n", $time);
#3 $finish;
end
endmodule*/




/*module threads();
initial
begin
fork
for( int h1_pointer=0; h1_pointer<=2; h1_pointer++)
begin
#1 $display($time," first loop: value of h1=%g", h1_pointer);
end
for(int d1_channel=2; d1_channel>=0; d1_channel--)
begin
 #1 $display($time," second loop: value os d1=%g", d1_channel);
end
join_none
$display("@%g outside of fork-join\n", $time);
# 3 $finish;
end
endmodule*/



/*module thread();
initial
begin
fork
for(int h1_pointer=0; h1_pointer<=2; h1_pointer++)
begin
#1 $display($time,"first loop:value of h1=%g", h1_pointer);
end
for(int d1_channel=2; d1_channel>=0; d1_channel--)
begin
#1 $display($time," second loop:value od d1=%g", d1_channel);
end
join
disable fork;
$display("@%g outside of fork-join\n", $time);
#3 $finish;
end
endmodule*/



/*module thread();
initial
begin
fork 
for(int h1_pointer=0; h1_pointer<2; h1_pointer++)
begin
#1 $display($time," first loop: value of h1=%g", h1_pointer);
end
for(int d1_channel=2; d1_channel>=0; d1_channel--)
begin
#1 $display($time," second loop:value of d1=%g", d1_channel);
end
join_any
disable fork;
$display("@%g outside of fork-join\n",$time);
#3 $finish;
end
endmodule*/




/*module threads();
initial
begin
fork
for(int h1_pointer=0; h1_pointer<2; h1_pointer++)
begin
#1 $display($time," first loop: value of h1=%g", h1_pointer);
end
for(int d1_channel=2; d1_channel>=0;
d1_channel--)
begin
 #1 $display($time," second loop: value of d1=%g", d1_channel);
end
join_none
disable fork;
$display("@%g outside of fork-join\n", $time);
#3 $finish;
end
endmodule*/














/*


lab07:-





ass ram_trans;
   // Declare the following rand fields
   // data (bit/logic type , size 64)
   // rd_address, wr_address (bit/logic type , size 12)
   // read, write (bit/logic type , size 1)
   
   rand bit[63:0] data;
   rand bit[11:0] rd_address;
   rand bit[11:0] wr_address;
   rand bit       read;
   rand bit       write;
   
   // Declare a variable data_out (logic type , size 64)
   logic [63:0] data_out;
 
   // Declare a static variable trans_id (int type), to keep the count of transactions generated
   static int trans_id;

   static int no_of_read_trans;
   static int no_of_write_trans;
   static int no_of_RW_trans;

   // Add the following constraints 

   // wr_address != rd_address;
   // read,write != 2'b00;
   // data between 1 and 4294   
   constraint VALID_ADDR {wr_address != rd_address;}
   constraint VALID_CTRL {{read,write} != 2'b00;}
   constraint VALID_DATA {data inside {[1:4294]};}

   // In post_randomize method 
      // Increment trans_id
      // If it is only read transaction,  increment no_of_read_trans
      // If it is only write transaction, increment no_of_write_trans
      // If it is read-write transaction, increment no_of_RW_trans
      // call the display method and pass a string
   function void post_randomize();
      trans_id++;
      if(this.read==1 && this.write==0)
         no_of_read_trans++;
      if(this.write==1 && this.read==0)
         no_of_write_trans++;
      if(this.read==1 && this.write==1)
         no_of_RW_trans++;
      this.display("\tRANDOMIZED DATA");
   endfunction: post_randomize

   //In virtual function display
      // display the string
      // display all the properties of the transaction class
   virtual function void display(input string message);
      $display("=============================================================");
      $display("%s",message);
      if(message=="\tRANDOMIZED DATA")
         begin
            $display("\t_______________________________");
            $display("\tTransaction No. %d",trans_id);
            $display("\tRead Transaction No. %d", no_of_read_trans);
            $display("\tWrite Transaction No. %d", no_of_write_trans);
            $display("\tRead-Write Transaction No. %d", no_of_RW_trans);
            $display("\t_______________________________");
         end
      $display("\tRead=%d, write=%d",read,write);
      $display("\tRead_Address=%d, Write_Address=%d",rd_address, wr_address);
      $display("\tData=%d",data);
      $display("\tData_out= %d",data_out);
      $display("=============================================================");
   endfunction: display


   //Understand and include the virtual function compare
   virtual function bit compare (input ram_trans rcvd,output string message);
      compare='0;
      begin
         if(this.rd_address != rcvd.rd_address)
            begin
               $display($time);
               message ="--------- ADDRESS MISMATCH ---------";
               return(0);
            end
        
         if(this.data_out != rcvd.data_out)
            begin
               $display($time);
               message="--------- DATA MISMATCH ---------";
               return(0);
            end
     
            begin
               message=" SUCCESSFULLY COMPARED";
               return(1);
            end
      end
   endfunction: compare

end

*/


/*module test;*/
/*class b1;
rand int a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
			if(a[i]%2==0)
				a[i]==i;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %p",a3);
end
endmodule*/











/*class packet;
rand bit [3:0] addr;
constraint valid_addr;
endclass: packet


constraint packet :: valid_addr{addr<10;}


module  test;
initial
begin
packet pkt;
pkt=new();
repeat(2);
begin 
assert(pkt.randomize() with {addr<5;});
$display("\taddr=%0d", pkt.addr);
end
end
endmodule:test*/



/*n class ram_sb

class ram_sb;
   //Declare an event DONE
   event DONE; 

   //Declare three variables of int datatype for counting
   //number of read data received from the reference model(rm_data_count)
   //number of read data received from the monitor(mon_data_count)
   //number of read data verified(data_verified)
   int data_verified = 0;
   int rm_data_count = 0;
   int mon_data_count = 0;

   //Declare ram_trans handles as 'rm_data','rcvd_data' and cov_data 
   ram_trans rm_data;  
   ram_trans rcvd_data;
   ram_trans cov_data;

   //Declare two mailboxes as 'rm2sb','rdmon2sb' parameterized by ram_trans 
   mailbox #(ram_trans) rm2sb;      //ref model to sb
   mailbox #(ram_trans) rdmon2sb;   //rdmon to sb
   
   //Write the functional coverage model 
   //Define a covergroup as 'mem_coverage'   
   //Define coverpoint and bins for read, data_out and rd_address
   //Define cross for read,rd_address
   covergroup mem_coverage;
      option.per_instance=1;     

      RD_ADD : coverpoint cov_data.rd_address {
                     bins ZERO     = {0};
                     bins LOW1     = {[1:585]};
                     bins LOW2     = {[586:1170]};
                     bins MID_LOW  = {[1171:1755]};
                     bins MID      = {[1756:2340]};
                     bins MID_HIGH = {[2341:2925]};
                     bins HIGH1    = {[2926:3510]};
                     bins HIGH2    = {[3511:4094]};
                     bins MAX      = {4095};
                                              }

      DATA : coverpoint cov_data.data_out {
                     bins ZERO     = {0};
                     bins LOW1     = {[1:500]};
                     bins LOW2     = {[501:1000]};
                     bins MID_LOW  = {[1001:1500]};
                     bins MID      = {[1501:2000]};
                     bins MID_HIGH = {[2001:2500]};
                     bins HIGH1    = {[2501:3000]};
                     bins HIGH2    = {[3000:4293]};
                     bins MAX      = {4294};
                                          }     
      
      RD : coverpoint cov_data.read    {
                     bins read  = {1};
                                       }

      READxADD: cross RD,RD_ADD; 
      
   endgroup : mem_coverage
   
   //In constructor
   //pass the mailboxes as arguments
   //make the connections
   //create an instance for the covergroup
   function new(mailbox #(ram_trans) rm2sb,
                mailbox #(ram_trans) rdmon2sb);
      this.rm2sb    = rm2sb;
      this.rdmon2sb = rdmon2sb;
      mem_coverage  = new;    
   endfunction: new

   //In virtual task start    
   virtual task start();
      //Within fork join_none, inside begin end
      fork
         while(1)
            begin
               //Get the data from mailbox rm2sb 
               rm2sb.get(rm_data);
               //Increment rm_data_count
               rm_data_count++;
               //Get the data from mailbox rdmon2sb
               rdmon2sb.get(rcvd_data);   
               //Increment mon_data_count
               mon_data_count++;    
               //Call the check task and pass 'rcvd_data' handle as the input argument
               check(rcvd_data);
            end
      join_none
   endtask: start

   // Understand and include the virtual task check
   virtual task check(ram_trans rc_data);
      string diff;
      if(rc_data.read == 1) 
         begin
            if(rc_data.data_out == 0)
               $display("SB: Random data not written");
            else if(rc_data.read == 1 && rc_data.data_out != 0)
               begin
                  if(!rm_data.compare(rc_data,diff))
                     begin:failed_compare
                        rc_data.display("SB: Received Data");
                        rm_data.display("SB: Data sent to DUV");
                        $display("%s\n%m\n\n", diff);
                        $finish;
                     end:failed_compare
                  else
                     $display("SB:  %s\n%m\n\n", diff);
               end
            //shallow copy rm_data to cov_data
            cov_data = new rm_data;
            //Call the sample function on the covergroup 
            mem_coverage.sample();
     
            //Increment data_verified 
            data_verified++;
            //Trigger the event if the verified data count is equal to the sum of number of read and read-write transactions 
            if(data_verified >= (number_of_transactions-rc_data.no_of_write_trans)) 
               begin             
                  ->DONE;
               end
         end
   endtask: check

   //In virtual function report 
   //display rm_data_count, mon_data_count, data_verified 
   virtual function void report();
      $display(" ------------------------ SCOREBOARD REPORT ----------------------- \n ");
      $display(" %0d Read Data Generated, %0d Read Data Recevied, %0d Read Data Verified \n",
                                             rm_data_count,mon_data_count,data_verified);
      $display(" ------------------------------------------------------------------ \n ");
   endfunction: report
    
endc*/
















/*module test;
bit start;
bit failure;
bit clk;
always@(posedge clk)
begin
failure=0;
repeat(1)
           begin:check
          @(posedge clk);
         $display("at time t=%0t,start=%0b",$time ,start);
    if(start==0)
begin
$display("error: Start is law before 4cycle at t=%0t",$time);
failure=1;
disable check;
end
end
if(failure==0)
              $display("success :startnis high or 4 consecutive cycle");
         end
      initial
begin
clk=1'b0;
forever  #5 clk=~clk;
end
initial
begin
  start=1'b0;
#30 start=1'b1;
#40 start=1'b0;
#20 start=1'b1;
#30 start=1'b0;
#10 start=1'b1;
#20 start=1'b0;
# 45 start=1'b1;
#5
$finish;
end
endmodule*/


//immediate Assertion//

/*module test;
reg a,b;
assign b=!a;
always_comb
begin
comb_a:assert(b!=a);
$display("at t=%t,passed",$time);
$display("at t=%t,failed",$time);
end
initial
begin
a=1;#10;
a=0;
#20;
$finish;
end 
endmodule*/

//Deffeered immediate//

/* module test;
reg a,b;
bit clk;
assign b=!a;
        always_comb 
begin
         comp_a: assert  #0((b!=a))
//begin

  $display("t=%t,passed",$time);
else
  $display("t=%t, not passed",$time);
 // end
end
initial
begin
  clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
 #0 a=1'b0,b=1'b0;
#10 a=1'b0,b=1'b0;
#20 a=1'b1,b=1'b1;
#30 a=1'b0,b=1'b1;
#40 a=1'b1,b=1'b0;
#50 a=1'b0,b=1'b0;
#60 a=1'b1, b=1'b0;
#5;
$finish;
a=1;
#10;
a=0;
#20 $finish;
end
endmodule*/

// concurrent assertion


/*module test;
reg a;
reg b;
bit clk;
always@(posedge clk)
begin
a_cc: assert property(@(posedge clk)not(a&&b));
$display("/tassertion passed=%t",$time);
$display("/t assertion failed=%t",$time);
end

initial
begin
clk=1'b0;
forever clk=~clk;
end
 
 initial
begin
#0 a=1'b0,b=1'b0;
#10 a=1'b0,b=1'b0;
#20 a=1'b1,b=1'b1;
#30 a=1'b0,b=1'b1;
#40 a=1'b1,b=1'b0;
#50 a=1'b0,b=1'b0;
#5;
$finish;
//end
endmodule*/

/* module test;
reg a=1'b1;
 bit clk;
sequence seq;
@(posedge clk)!a;
endsequence

property ppt;
seq;
endproperty
acc:assert property(ppt);
initial
begin
$display("Assertion have pass =%p",a);
//clk 1'b0;
forever
begin
#5
clk=~clk;
$finish;
end
end
endmodule*/


/*module test;
reg a;
reg b;
bit clk;

initial
begin
forever
begin
#5
clk=~clk;

end
end


sequence seq;
@(posedge clk)a ##2 b;
endsequence
property ppt;
seq;
endproperty
acc:assert property(ppt);
initial
#200 $finish;
endmodule*/
// default clocking block 

/*module test;
bit clk;
 bit seq_clk;
default clocking def_clk
//reg a,b,c,d;
@(posedge clk);
endclocking
//initial begin

reg a,b,c,d;

sequence S1;
a ## 1 b;
endsequence
sequence S2;
d ## 4 c;
endsequence
sequence S3;
@(posedge seq_clk)(a || b)[*3];
endsequence
initial
begin
$display("default clocking pass");
forever
begin
#5
clk=~clk;
end
end
//end
endmodule*/

 // action block//


/*module test;
 bit clk;
reg a,b;
property ppt;
always@(posedge clk) a ## 2 b;
 endproperty
initial
begin
acc: assert property(ppt)

  $display("ppt passed at time t=%t",$time);
else 
 $display("ppt passed at time t=%t",$time);


//endproperty
//a=1;
//b=1;
#0 a=1'b1,b=1'b0;
#10 a=1'b1,b=1'b0;
#20 a=1'b1,b=1'b0;
#30 a=1'b1,b=1'b0;
#40 a=1'b1,b=1'b1;
#5
$finish;
forever
begin
#12
clk=~clk;
initial 
begin

end

//end
//end
endmodule*/

/*module test;

 property reset1;
	@(posedge clk)
	reset |=> (count==0);
        endproperty 

	property ld_data;
		@(posedge clk) disable iff(reset)
		load |=> (count==data_in);
	endproperty

	property up_count;
		@(posedge clk) disable iff (reset)
		(updown)&&(!load) |=> (count==$past(count,1),+1’b1);
	endproperty

	property down_count;
		@(posedge clk) disable iff (reset)
		(!updown)&&(!load) |=> (count==$past(count,1),- 1’b1);
	endproperty

assert property(reset1);
assert property(up_count);
assert property(down_count);
assert property(id_data)

endmodule*/


/*module test;
    bit a;
     bit clk;
 initial
begin
forever
#5;
clk=~clk;
 end
      sequence S1;
    @(posedge clk) $rose(a);
      endsequence
     initial
  begin
acc:assert property(S1);

 #5 a= 10;
 #5 a= 20;
#5 a=30;
#5 a=40;
#5 a=50;
#5 a=60;
#5 a=70;
$finish;
#5;
end
endmodule*/
 

//programme for flip flop

/*module test;
// bit q;
 bit clk;
bit rst;
bit t;
bit q;
//integer  toggle;

//NC:assert property(no_change);


  property no_change;
@(posedge clk)!t|=>q==$past(q,1);
endproperty
NC:assert property(no_change);


//TG:assert property(www);

property www;
 @(posedge clk) t|=> q==~($past(q,1));
  endproperty
TG:assert property(www);

//acc: assert property(toggle)

  property toggle;
bit past_q;
@(posedge clk)(t==1,past_q=q) |=> q== !(past_q);
endproperty

TG: assert property(toggle);


property qqq;
bit past_q;
@(posedge clk)(t==1,past_q=q) |=> q==!(past_q);
  t|=> q==!($past(q,1));
endproperty
endmodule*/

/*module tff_dut(clk,rst,t,q);
	input clk,t,rst;
	output reg q = 1'b0;
	always @(posedge clk)
		begin
			if(rst)
				q <= 1'b0;
			else
				begin
					if(t)
						q <= ~q;
					else
						q <= q;
				end
		end
   initial
begin
      forever
         begin
   #5;
     clk=~clk;
 end
end
	sequence s1;
		rst;
	endsequence
	property rst_ppt;
		@(posedge clk) s1 |=> !q;
	endproperty

	sequence s2;
		t;
	endsequence
	property toggle;
		@(posedge clk) disable iff(rst)
			s2 |=> q == ~($past(q,1));
	endproperty

	RST:assert property(rst_ppt);
	T: assert property(toggle);
	RST_cov: cover property(rst_ppt);
	T_cov: cover property(toggle);

endmodule*/

 /*   module test();
    bit clk;
    bit a;
  sequence s1;
  @(posedge clk) $rose(a);
 endsequence
   initial
   begin
forever
    #10; clk= ~clk;
end
   initial
   begin 

       assert property(s1);
       //endproperty

   for(int i=0;i<1; i++)
  begin
  A= ;
   @(posedge clk)
  $display("%p",$time,A);
  end*/

         /*#10 a= 10;
 #20 a= 20;
#30 a=30;
#40 a=40;
#50 a=50;
#60 a=60;
#60 a=70;
$finish;
  $display("%p", $time,a);

 #20 $finish;
end
endmodule*/
  
        /* module test;
        //bit a,b,c;
      
              module test;
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

$monitor("/t fail at 11 cycle=%t,%p,%p,%p",$time,a,b,c);


//end

end
endmodule*/

// Extend write_xtn from uvm_sequence_item
/*class write_xtn extends uvm_sequence_item;
  
	// UVM Factory Registration Macro
	`uvm_object_utils(write_xtn)

	//------------------------------------------
	// DATA MEMBERS (Outputs non-rand, inputs rand)
	//------------------------------------------

	 
		
	// Add the rand fields - data (`RAM_WIDTH-1:0), address(`ADDR_SIZE – 1:0),declared in tb_defs.sv
	// write (type bit) 

	rand bit[`RAM_WIDTH-1 : 0] data;    
	rand bit[`ADDR_SIZE-1 : 0] address;
	rand bit write;
  
	// Add the rand control knobs declared in tb_defs.sv

	// xtn_type (enumerated type addr_t)  -  for controlling the type of transaction 
	// xtn_delay (integer type) - for inserting delay between transactions
	
	rand addr_t xtn_type;
	rand bit[63:0] xtn_delay;
         
	//------------------------------------------
	// CONSTRAINTS
	//------------------------------------------
	 
	// Add the following constraints :
	// Data between 20 through 90
	// Address between 0 through 200
	// Distribute weights for xtn_type : BAD_XTN=2 and GOOD_XTN=30

	constraint a{ data inside {[20:90]};
		      address inside {[0:200]};
		      xtn_type dist {BAD_XTN:=2 , GOOD_XTN:=30}; 
		    }
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods like constructor,do_compare,do_copy,do_print,post_randomize
	extern function new(string name = "write_xtn");
	extern function void do_copy(uvm_object rhs);
	extern function bit do_compare(uvm_object rhs, uvm_comparer comparer);
	extern function void do_print(uvm_printer printer);
	extern function void post_randomize();

endclass:write_xtn

	//-----------------  constructor new method  -------------------//
	//Add code for new() 

function write_xtn::new(string name = "write_xtn");
	super.new(name);
endfunction:new
	  
//-----------------  do_copy method  -------------------//
//Add code for do_copy() to copy address, data, write, xtn_type and xtn_delay
function void write_xtn::do_copy (uvm_object rhs);

    // handle for overriding the variable
    write_xtn rhs_;

	 // Add a check for rhs_ using $cast to check that the object types are 
	 // compatible
    if(!$cast(rhs_,rhs))
		begin
			`uvm_fatal("do_copy","cast of the rhs object failed")
		end
    super.do_copy(rhs);

	// Copy over data members:
	// <var_name> = rhs_.<var_name>;

    data= rhs_.data;
    address= rhs_.address;
    write= rhs_.write;
    xtn_type= rhs_.xtn_type;
    xtn_delay= rhs_.xtn_delay;

endfunction:do_copy


//-----------------  do_compare method -------------------//

//Add code for do_compare() to compare address, data, write, xtn_type and xtn_delay
function bit  write_xtn::do_compare (uvm_object rhs,uvm_comparer comparer);

	// handle for overriding the variable
    write_xtn rhs_;
	// Add a check for rhs_ using $cast to check that the object types are 
	// compatible
    if(!$cast(rhs_,rhs)) 
		begin
			`uvm_fatal("do_compare","cast of the rhs object failed")
			return 0;
		end

	  // Compare the data members and return the result of comparision
	  // <var_name> == rhs_.<var_name>;

	return super.do_compare(rhs,comparer) &&
	data== rhs_.data &&
	address== rhs_.address &&
	write== rhs_.write &&
	xtn_type== rhs_.xtn_type &&
	xtn_delay== rhs_.xtn_delay;

endfunction:do_compare 

//-----------------  do_print method  -------------------//
//Use printer.print_field for integral variables
//Use printer.print_generic for enum variables
function void  write_xtn::do_print (uvm_printer printer);
	super.do_print(printer);

   
    //              	srting name   		bitstream value     size    radix for printing
    printer.print_field( "data", 			this.data, 	    	64,		 UVM_DEC		);
    printer.print_field( "address", 		this.address, 	    12,		 UVM_DEC		);
    printer.print_field( "write", 			this.write, 	    1'b1,		 UVM_DEC		);
    printer.print_field( "xtn_delay", 		this.xtn_delay,     65,		 UVM_DEC		);
   
    //  	         	   variable name	xtn_type		$bits(variable name) 	variable name.name
    printer.print_generic( "xtn_type", 		"addr_t",		$bits(xtn_type),		xtn_type.name);

endfunction:do_print
    

function void write_xtn::post_randomize();
    if(xtn_type == BAD_XTN)
		begin
			this.address = 6000;
		end
endfunction : post_randomize
 
 
   

// Extend write_xtn from uvm_sequence_item
class write_xtn extends uvm_sequence_item;
  
	// UVM Factory Registration Macro
	`uvm_object_utils(write_xtn)

	//------------------------------------------
	// DATA MEMBERS (Outputs non-rand, inputs rand)
	//------------------------------------------

	 
		
	// Add the rand fields - data (`RAM_WIDTH-1:0), address(`ADDR_SIZE – 1:0),declared in tb_defs.sv
	// write (type bit) 

	rand bit[`RAM_WIDTH-1 : 0] data;    
	rand bit[`ADDR_SIZE-1 : 0] address;
	rand bit write;
  
	// Add the rand control knobs declared in tb_defs.sv

	// xtn_type (enumerated type addr_t)  -  for controlling the type of transaction 
	// xtn_delay (integer type) - for inserting delay between transactions
	
	rand addr_t xtn_type;
	rand bit[63:0] xtn_delay;
         
	//------------------------------------------
	// CONSTRAINTS
	//------------------------------------------
	 
	// Add the following constraints :
	// Data between 20 through 90
	// Address between 0 through 200
	// Distribute weights for xtn_type : BAD_XTN=2 and GOOD_XTN=30

	constraint a{ data inside {[20:90]};
		      address inside {[0:200]};
		      xtn_type dist {BAD_XTN:=2 , GOOD_XTN:=30}; 
		    }
	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods like constructor,do_compare,do_copy,do_print,post_randomize
	extern function new(string name = "write_xtn");
	extern function void do_copy(uvm_object rhs);
	extern function bit do_compare(uvm_object rhs, uvm_comparer comparer);
	extern function void do_print(uvm_printer printer);
	extern function void post_randomize();

endclass:write_xtn

	//-----------------  constructor new method  -------------------//
	//Add code for new() 

function write_xtn::new(string name = "write_xtn");
	super.new(name);
endfunction:new
	  
//-----------------  do_copy method  -------------------//
//Add code for do_copy() to copy address, data, write, xtn_type and xtn_delay
function void write_xtn::do_copy (uvm_object rhs);

    // handle for overriding the variable
    write_xtn rhs_;

	 // Add a check for rhs_ using $cast to check that the object types are 
	 // compatible
    if(!$cast(rhs_,rhs))
		begin
			`uvm_fatal("do_copy","cast of the rhs object failed")
		end
    super.do_copy(rhs);

	// Copy over data members:
	// <var_name> = rhs_.<var_name>;

    data= rhs_.data;
    address= rhs_.address;
    write= rhs_.write;
    xtn_type= rhs_.xtn_type;
    xtn_delay= rhs_.xtn_delay;

endfunction:do_copy


//-----------------  do_compare method -------------------//

//Add code for do_compare() to compare address, data, write, xtn_type and xtn_delay
function bit  write_xtn::do_compare (uvm_object rhs,uvm_comparer comparer);

	// handle for overriding the variable
    write_xtn rhs_;
	// Add a check for rhs_ using $cast to check that the object types are 
	// compatible
    if(!$cast(rhs_,rhs)) 
		begin
			`uvm_fatal("do_compare","cast of the rhs object failed")
			return 0;
		end

	  // Compare the data members and return the result of comparision
	  // <var_name> == rhs_.<var_name>;

	return super.do_compare(rhs,comparer) &&
	data== rhs_.data &&
	address== rhs_.address &&
	write== rhs_.write &&
	xtn_type== rhs_.xtn_type &&
	xtn_delay== rhs_.xtn_delay;

endfunction:do_compare 

//-----------------  do_print method  -------------------//
//Use printer.print_field for integral variables
//Use printer.print_generic for enum variables
function void  write_xtn::do_print (uvm_printer printer);
	super.do_print(printer);

   
    //              	srting name   		bitstream value     size    radix for printing
    printer.print_field( "data", 			this.data, 	    	64,		 UVM_DEC		);
    printer.print_field( "address", 		this.address, 	    12,		 UVM_DEC		);
    printer.print_field( "write", 			this.write, 	    1'b1,		 UVM_DEC		);
    printer.print_field( "xtn_delay", 		this.xtn_delay,     65,		 UVM_DEC		);
   
    //  	         	   variable name	xtn_type		$bits(variable name) 	variable name.name
    printer.print_generic( "xtn_type", 		"addr_t",		$bits(xtn_type),		xtn_type.name);

endfunction:do_print
    

function void write_xtn::post_randomize();
    if(xtn_type == BAD_XTN)
		begin
			this.address = 6000;
		end
endfunction : post_randomize*/


 
 
   

class packet;
rand int addr,data;
endclass



class generator;
packet ppt;
mailbox#(packet) gen2sb;


function new();
gen2sb=new();
endfunction



task gen_packet;
pkt=new();
repeat(100)
begin
pkt.randomize();
gen2sb.put(pkt)
end
endtask
endclass
 
