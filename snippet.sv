

/*import uvm_pkg::*;
`include "uvm_macros.svh"

class my_xtn extends uvm_sequence_item;


rand bit [3:0]addr;
rand bit [7:0] data;



constraint  valid_addr{addr inside {[2:13]};}

constraint  valid_data {data inside {[15:150]};}
0 

`uvm_object_utils_begin(my_xtn)
`uvm_field_int(addr,UVM_ALL_ON)
`uvm_field_int(data,UVM_ALL_ON)
`uvm_object_utils_end




function new(string name="my_xtn");
super.new(name);
endfunction



endclass






class my_generator extends uvm_component;


uvm_blocking_put_port #(my_xtn) put_port;


`uvm_component_utils(my_generator)


function new(string name="my_generator", uvm_component parent);
super.new(name, parent);
put_port=new("put_port",this);
endfunction


virtual task run_phase(uvm_phase phase);
my_xtn xtn;
for( int i=0; i<10; i++)
begin
xtn=my_xtn::type_id::create("xtn");
phase.raise_objection(this);
#10;
put_port.put(xtn);
phase.drop_objection(this);
end
endtask
endclass




class my_driver extends uvm_component;
uvm_blocking_put_imp #(my_xtn,my_driver)put_imp;

`uvm_component_utils(my_driver)



function new(string name="my_driver", uvm_component parent);
super.new(name,parent);
put_imp=new("put_imp",this);
//t2=my_driver::type_id::create("my_driver",this);
endfunction




task put(my_xtn xtn);
my_xtn t2;
//t2=my_xtn::type_id::create("t2");
$cast(t2, xtn.clone());
t2.print();
`uvm_info(get_type_name(), "packet is recived",UVM_LOW)
endtask
endclass





class my_test extends uvm_test;

my_generator t1;
my_driver t2;

`uvm_component_utils(my_test)


function new(string name="my_test", uvm_component parent);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
super.build_phase(phase);
begin
t2=my_driver::type_id::create("t2",this);
t1=my_generator::type_id::create("t1",this);
end
endfunction


function void  connect_phase(uvm_phase phase);
t1.put_port.connect(t2.put_imp);
endfunction
endclass




module top();


initial
begin
run_test("my_test");
end


endmodule*/




import uvm_pkg::*;
`include "uvm_macros.svh"

class my_xtn extends uvm_sequence_item;


rand bit [3:0]addr;
rand bit [7:0] data;



constraint  valid_addr{addr inside {[2:13]};}

constraint  valid_data {data inside {[15:150]};}
 

`uvm_object_utils_begin(my_xtn)
`uvm_field_int(addr,UVM_ALL_ON)
`uvm_field_int(data,UVM_ALL_ON)
`uvm_object_utils_end




function new(string name="my_xtn");
super.new(name);
endfunction



endclass






class my_generator extends uvm_component;


uvm_blocking_get_imp #(my_xtn,my_generator) get_imp;


`uvm_component_utils(my_generator)


function new(string name="my_generator", uvm_component parent);
super.new(name, parent);
get_imp=new("get_imp",this);
endfunction





task get(my_xtn t1);
my_xtn t2;
//t2=my_xtn::type_id::create("t2");
$cast(t2, t1.clone());
t2.print();
`uvm_info(get_type_name(), "packet is recived",UVM_LOW)
endtask
endclass







/*virtual task run_phase(uvm_phase phase);
my_xtn xtn;
for( int i=0; i<10; i++)
begin
xtn=my_xtn::type_id::create("xtn");
phase.raise_objection(this);
#10;
put_por.put(xtn);
phase.drop_objection(this);
end
endtask
endclass*/




class my_driver extends uvm_component;
uvm_blocking_get_port #(my_xtn)get_port;

`uvm_component_utils(my_driver)



function new(string name="my_driver", uvm_component parent);
super.new(name,parent);
get_port=new("get_port",this);
//t2=my_driver::type_id::create("my_driver",this);
endfunction


virtual task run_phase(uvm_phase phase);
my_xtn t1;
for( int i=0; i<10; i++)
begin
t1=my_xtn::type_id::create("xtn");
phase.raise_objection(this);
#10;
get_port.get(t1);
phase.drop_objection(this);
end
endtask
endclass






/*task put(my_xtn xtn);
my_xtn t2;
//t2=my_xtn::type_id::create("t2");
$cast(t2, xtn.clone());
t2.print();
`uvm_info(get_type_name(), "packet is recived",UVM_LOW)
endtask
endclass*/





class my_test extends uvm_test;

my_generator t1;
my_driver t2;

`uvm_component_utils(my_test)


function new(string name="my_test", uvm_component parent);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
super.build_phase(phase);
begin
t2=my_driver::type_id::create("t2",this);
t1=my_generator::type_id::create("t1",this);
end
endfunction


function void  connect_phase(uvm_phase phase);
t1.get_imp.connect(t2.get_port);
endfunction
endclass




module top();


initial
begin
run_test("my_test");
end


endmodule





