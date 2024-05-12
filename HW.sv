///* ---even-----
clas




s Packet;

  rand bit[7:0] payload[]; //dynamic array

  constraint packet_cnstr {
     payload.size inside {[2:5]};
     payload.sum == 100;
     foreach (payload[kk])
        payload[kk] inside {[1:100]}; // non-negative integers
  }

endclass
module test;
initial
begin
   repeat (5) begin // generate 5 packets
        Packet p1;
        p1 = new();
	end
        if (p1.randomize()) begin
           $write("payload has %0d elements: ", p1.payload.size);
           for (int ii=0; ii < p1.payload.size; ii++)
              $write("%2d ", p1.payload[ii]);
           $display;
        end else begin
           $display("randomization failed");
        end
end
endmodule
/*
initial
begin
a3=new;
begin
for(int i=0;i<)
assert(a3.randomize());
$display("the value %p",a3);
end
endmodule
*/
/*---------------odd--------------*/
/*
class b1;
rand int a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
                        if(i%2==1)
                                a[i]==i;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %p",a3.a);
end
endmodule
*/
/*----------------natural no and twice odd no---------
class b1;
rand int a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
                        if(i%2==0)
                            a[i]==i; // a[i]==i; // a[i]==i+1;
			else if(i%2==1)
				a[i]==i+1;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %p",a3.a);
end
endmodule

*/



/*class b1;
rand bit[7:0] a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
                        if(i%2==0)
                                a[i]==i;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %d",a3);
end
endmodule*/

/*
class PhoneNumber;
  rand bit [2:0] area_code;
  rand bit [2:0] first_part;
  rand bit [3:0] second_part;

  constraint valid_area_code {
    area_code inside {[2:9]};
  }

  constraint valid_first_part {
    first_part inside {[0:9]};
  }

  constraint valid_second_part {
    second_part inside {[0:9]};
  }

  function void print();
    $display("Phone Number: (%0d) %0d-%0d", area_code, first_part, second_part);
  endfunction
endclass

module test;
initial
repeat(10)
begin
    PhoneNumber num;
    num = new;
    num.randomize();
num.print();
end
endmodule
*/






/*
                                                                                                                                                                                                                                                                                                                                             ss PhoneNumber;
  rand bit  [3:0]  area_code;
   rand bit [3:0]  number;

  //constraint valid_area_code {
  //  area_code inside {[2:9]};}
constraint valid_area_code {
   area_code <=9;}

 //constraint valid_number{
   //    number inside{[9:0]};}
 constraint valid_number{number<=9;}

 function void print();
    
          endfunction
endclass
PhoneNumber num=new;

module test;
initial
 repeat(10)
begin
         
    //num = new;
    num.randomize();
   $display("phone number : %d  ",num);
  $display("area code : %d", num); 
num.print();
end
endmodule
*/
/*
class PhoneNumber;
  rand bit  [2:0]  area_code;
   rand bit [3:0]  number;

  //constraint valid_area_code {
  //  area_code inside {[2:9]};}
constraint valid_area_code {
   area_code <=9;}

 //constraint valid_number{
   //    number inside{[9:0]};}
 constraint valid_number{number<=9;}

 function void print();
    
          endfunction
endclass
PhoneNumber num=new;

module test;
initial
 repeat(10)
begin 
    num.randomize();
   $display("phone number : %d",num.number);
   $display("area code : %d", num.area_code); 
num.print();
end
endmodule 
*/



class count_trans;
      
   rand bit [3:0] data_in;
   rand bit mode;
   rand bit reset;
   rand bit load;
   
   bit [3:0] data_out;
 
   static int trans_id;
  
   constraint VALID_RESET { reset dist{1:=30,0:=70};}
   constraint VALID_LOAD { load dist{1:=60, 0:=50};}
   constraint VALID_MODE  {mode dist{1:=60, 0:=50};}
   constraint VALID_DATA { data_in inside{[0:9]};}

   function void post_randomize();
      trans_id++;
      this.display("\tRANDOMIZED DATA");
   endfunction: post_randomize

   virtual function void display(input string message);
      $display("=============================================================");
      $display("%s",message);
      if(message=="\tRANDOMIZED DATA")
         begin
            $display("\t_______________________________");
            $display("\tTransaction No. %d",trans_id);
            $display("\t_______________________________");
         end
      $display("\tReset=%d",reset);
      $display("\tMode=%d, load=%d",mode,load);
      $display("\tData_in=%d",data_in);
      $display("\tData_out= %d",data_out);
      $display("=============================================================");
   endfunction: display

endclass: count_trans



















class count_drv;

   virtual count_if.WR_DRV_MP wr_drv_if;
 
   count_trans data2duv;
 
   mailbox #(count_trans) gen2wr;  

   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                mailbox #(count_trans) gen2wr);
      this.wr_drv_if = wr_drv_if;
      this.gen2wr    = gen2wr;
   endfunction: new

   virtual task drive();
      @(wr_drv_if.wr_drv_cb);
      wr_drv_if.wr_drv_cb.reset <= data2duv.reset;
      wr_drv_if.wr_drv_cb.mode <= data2duv.mode;
      wr_drv_if.wr_drv_cb.load <= data2duv.load;

      wr_drv_if.wr_drv_cb.data_in    <= data2duv.data_in;
     
   endtask: drive
  
   virtual task start();

      fork
         forever
            begin
               gen2wr.get(data2duv);
               drive();
            end
      join_none
   endtask: start

endclass


















class count_gen;

    count_trans gen_trans;

    count_trans data2send;

    mailbox #(count_trans) gen2wr;
 
    function new(mailbox #(count_trans) gen2wr);
      this.gen_trans = new;
      this.gen2wr = gen2wr;
   endfunction: new

   virtual task start();
       
      fork
         begin
            for(int i=0; i<number_of_transactions; i++)
               begin       
                  assert(gen_trans.randomize()); 
                  data2send = new gen_trans;
                  gen2wr.put(data2send);
               end
         end
      join_none
   endtask: start

endclass: count_gen
























interface count_if(input bit clock);

bit reset;
bit load;
bit mode;
bit [3:0]data_in;
bit [3:0]data_out;


	//clocking block for duv
	/*clocking duv_cb@(posedge clock);
		default input #1 output #1;
		input reset;
		input load;
		input mode;
		input [3:0]data_in;
		output [3:0]data_out;
	endclocking:duv_cb*/


	//clocking block for write driver
	clocking wr_drv_cb@(posedge clock);
		default input #1 output #1;
		output reset;
		output load;
		output mode;
		output data_in;
	endclocking:wr_drv_cb


	//clocking block for read monitor
	clocking rd_mon_cb@(posedge clock);
		default input #1 output #1;
		input data_out;
	endclocking:rd_mon_cb

	
	//clocking block for write monitor
	clocking wr_mon_cb@(posedge clock);
		default input #1 output #1;
		input reset;
		input load;
		input mode;
		input data_in;
		//input data_out;
	endclocking:wr_mon_cb

	//modport for DUV
	//modport DUV(clocking duv_cb);
	//modport for write driver
	modport WR_DRV_MP(clocking wr_drv_cb);
	//modport for write monitor
	modport WR_MON_MP(clocking wr_mon_cb);
	//modport for read monitor
	modport RD_MON_MP(clocking rd_mon_cb);

endinterface
















class count_model;
   
   count_trans wrmon_data;
   count_trans rdmon_data;

   logic [3:0] ref_data=0;
 
   mailbox #(count_trans) wr2rm;
   mailbox #(count_trans) rm2sb;

   function new(mailbox #(count_trans) wr2rm,
                mailbox #(count_trans) rm2sb);
      this.wr2rm = wr2rm;
      this.rm2sb = rm2sb;
      this.rdmon_data=new;
   endfunction: new
   
   virtual task store(count_trans wrmon_data);
      begin
		if(wrmon_data.reset)
			ref_data <=0;
		else if(wrmon_data.load)
			ref_data <=wrmon_data.data_in;
		else begin
			case(wrmon_data.mode)
			
				0:begin
					if(ref_data==0)
						ref_data<=9;
					else
						ref_data <=ref_data--;
				end
				1:begin
					if(ref_data >= 9)
						ref_data<=0;
					else
						ref_data <=ref_data++;
				end
			endcase
		end
	end
   endtask: store
  
   virtual task start();
          fork 
            begin
                  forever 
                     begin
                        wr2rm.get(wrmon_data);
                        store(wrmon_data);
			wrmon_data.data_out=ref_data;
			rm2sb.put(wrmon_data);
                    end
               end
      join_none
   endtask: start

endclass

























class count_rd_mon;

   virtual count_if.RD_MON_MP rd_mon_if;

   count_trans rddata, data2sb;

   mailbox #(count_trans) mon2sb;
   
   function new(virtual count_if.RD_MON_MP rd_mon_if,
                mailbox #(count_trans) mon2sb);
      this.rd_mon_if = rd_mon_if;
      this.mon2sb    = mon2sb;
      this.rddata    = new;
   endfunction: new


   virtual task monitor();
      @(rd_mon_if.rd_mon_cb);
      begin
         rddata.data_out = rd_mon_if.rd_mon_cb.data_out;
         rddata.display("DATA FROM READ MONITOR");    
      end
   endtask: monitor
   
   virtual task start();
      fork
         forever
            begin
               monitor(); 
               data2sb = new rddata;
               mon2sb.put(data2sb);
            end
      join_none
   endtask: start

end


endclass




















class count_sb;
   
   event DONE; 

   int data_verified = 0;
  
   count_trans rm_data;  
   count_trans rcvd_data;
   count_trans cov_data;

   mailbox #(count_trans) rm2sb;     
   mailbox #(count_trans) rdmon2sb;      
     covergroup count_coverage;
      option.per_instance=1;     

      RESET : coverpoint cov_data.reset;

      LOAD : coverpoint cov_data.load;
/*{
			bins a={[0:1]};}
*/
      MODE : coverpoint cov_data.mode;
      DATA : coverpoint cov_data.data_in{
	  	     bins ZERO     = {0};
                     bins HIGH      = {[1:4]};
 		     bins HIGH2     = {[5:8]};
                     bins MAX      = {9};
					}   
      LOADXDATA: cross LOAD,DATA;
      MODExLOADxDATA: cross MODE,LOAD,DATA; 
      
   endgroup : count_coverage

   function new(mailbox #(count_trans) rm2sb,
                mailbox #(count_trans) rdmon2sb);
      this.rm2sb    = rm2sb;
      this.rdmon2sb = rdmon2sb;
      count_coverage  = new;    
   endfunction: new
  
   virtual task start();
         fork
         while(1)
            begin
               rm2sb.get(rm_data);
               //rm_data_count++;
               rdmon2sb.get(rcvd_data);   
               //mon_data_count++;    
               check(rcvd_data);
            end
      join_none
   endtask: start

   virtual task check(count_trans rc_data);

      if(rc_data.data_out == rm_data.data_out) 
      	    $display("COUNT MATCHS");
            
      else
	$display("COUNT DOSE NOT MATCH");
       
       cov_data = new rm_data;
       count_coverage.sample();

       data_verified++;
            
      if(data_verified >= (number_of_transactions+2))
        begin             
             ->DONE;
          end
    endtask: check

   virtual function void report();
      $display(" ------------------------ SCOREBOARD REPORT ----------------------- \n ");
      $display(" Data Verified \n",data_verified);
      $display(" ------------------------------------------------------------------ \n ");
   endfunction: report
    
endclass
















class count_trans;
      
   rand bit [3:0] data_in;
   rand bit mode;
   rand bit reset;
   rand bit load;
   
   bit [3:0] data_out;
 
   static int trans_id;
  
   constraint VALID_RESET { reset dist{1:=30,0:=70};}
   constraint VALID_LOAD { load dist{1:=60, 0:=50};}
   constraint VALID_MODE  {mode dist{1:=60, 0:=50};}
   constraint VALID_DATA { data_in inside{[0:9]};}

   function void post_randomize();
      trans_id++;
      this.display("\tRANDOMIZED DATA");
   endfunction: post_randomize

   virtual function void display(input string message);
      $display("=============================================================");
      $display("%s",message);
      if(message=="\tRANDOMIZED DATA")
         begin
            $display("\t_______________________________");
            $display("\tTransaction No. %d",trans_id);
            $display("\t_______________________________");
         end
      $display("\tReset=%d",reset);
      $display("\tMode=%d, load=%d",mode,load);
      $display("\tData_in=%d",data_in);
      $display("\tData_out= %d",data_out);
      $display("=============================================================");
   endfunction: display

end

endclass











class count_wr_mon;

   virtual count_if.WR_MON_MP wr_mon_if;

   count_trans wrdata;
   count_trans data2rm;

   mailbox #(count_trans) mon2rm;
  
   function new(virtual count_if.WR_MON_MP wr_mon_if,
                mailbox #(count_trans) mon2rm);
      this.wr_mon_if = wr_mon_if;
      this.mon2rm    = mon2rm;
      this.wrdata    = new;
   endfunction: new


   virtual task monitor();
      @(wr_mon_if.wr_mon_cb);
      begin
         wrdata.reset = wr_mon_if.wr_mon_cb.reset;
         wrdata.mode  =  wr_mon_if.wr_mon_cb.mode;
         wrdata.load = wr_mon_if.wr_mon_cb.load;
	 wrdata.data_in = wr_mon_if.wr_mon_cb.data_in;
	 //wrdata.data_out = wr_mon_if.wr_mon_cb.data_out;
         wrdata.display("DATA FROM WRITE MONITOR");
      
      end
   endtask: monitor
             
   virtual task start();

      fork
         forever
            begin
               monitor();   
               data2rm = new wrdata;
               mon2rm.put(data2rm);
            end
      join_none
   endtask: start

endclass










package count_pkg;

   int number_of_transactions = 1;
 
	`include "count_trans.sv"
	`include "count_gen.sv"
	`include "count_drv.sv"
	`include "count_wr_mon.sv"
	`include "count_rd_mon.sv"
	`include "count_model.sv"
	`include "count_sb.sv"
	`include "count_env.sv"
	`include "test.sv" 
endpackage



















`include "test.sv"
module top();  
  
   import count_pkg::*;  
   parameter cycle = 10;
  
   reg clock;

   count_if DUV_IF(clock);

   count_base_test base_test_h;
   
   count_test_extnd1 ext_test_h1;

   count_test_extnd2 ext_test_h2;

  
   count COUNTER (.clock(clock),.reset(DUV_IF.reset),.load(DUV_IF.load),.mode(DUV_IF.mode),.data_in(DUV_IF.data_in),.data_out(DUV_IF.data_out)); 

   initial
      begin
         clock = 1'b0;
         forever #(cycle/2) clock = ~clock;
      end
   
   initial
      begin
	 
	`ifdef VCS
         $fsdbDumpvars(0, top);
        `endif

	//Create the objects for different testcases and pass the interface instances as arguments
         //Call the virtual task build and virtual task run       
         if($test$plusargs("TEST1"))
            begin
               base_test_h = new(DUV_IF, DUV_IF, DUV_IF);
               number_of_transactions = 500;
               base_test_h.build();
               base_test_h.run();
               $finish;
            end

         if($test$plusargs("TEST2"))
            begin
               ext_test_h1 = new(DUV_IF, DUV_IF, DUV_IF);
               number_of_transactions = 1000;
               ext_test_h1.build();
               ext_test_h1.run(); 
               $finish;
            end
	if($test$plusargs("TEST3"))
            begin
               ext_test_h2 = new(DUV_IF, DUV_IF, DUV_IF);
               number_of_transactions = 100;
               ext_test_h2.build();
               ext_test_h2.run(); 
               $finish;
            end


      end
endmodule



















//import count_pkg::*;
class count_trans_extnd1 extends count_trans; 
	constraint valid_data {data_in inside{[0:2]};}
	constraint valid_reset{reset inside{0,1} ;}
	constraint valid_mode{mode inside{0,1} ;}
	constraint valid_load{load ==1 ;}

endclass 









class count_trans_extnd2 extends count_trans; 
	constraint valid_data1 {data_in inside{0,1};}
	constraint valid_reset1{reset==1 ;}
	constraint valid_mode1{mode==1 ;}
	constraint valid_load1{load==1 ;}

endclass 

class count_base_test; 
   virtual count_if.WR_DRV_MP wr_drv_if; 
   virtual count_if.RD_MON_MP rd_mon_if; 
   virtual count_if.WR_MON_MP wr_mon_if;
   
   count_env env_h;
     
   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                virtual count_if.WR_MON_MP wr_mon_if,
                virtual count_if.RD_MON_MP rd_mon_if);
      this.wr_drv_if = wr_drv_if;
      this.wr_mon_if = wr_mon_if;
      this.rd_mon_if = rd_mon_if;
      
      env_h = new(wr_drv_if,wr_mon_if,rd_mon_if);
   endfunction: new

   virtual task build();
      env_h.build();
   endtask: build
   
   virtual task run();              
      env_h.run();
   endtask: run   
   
endclass: count_base_test









class count_test_extnd1 extends count_base_test;
      
   count_trans_extnd1 data_h1;
   
   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                virtual count_if.WR_MON_MP wr_mon_if,
                virtual count_if.RD_MON_MP rd_mon_if);
      super.new(wr_drv_if,wr_mon_if,rd_mon_if);      
   endfunction: new

   virtual task build();
      super.build();
   endtask: build
   
   virtual task run();  
      data_h1 = new();
      env_h.count_gen_h.gen_trans = data_h1;
      super.run();
   endtask: run      
   
endclass: count_test_extnd1

class count_test_extnd2 extends count_base_test;
      
   count_trans_extnd2 data_h2;
   
   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                virtual count_if.WR_MON_MP wr_mon_if,
                virtual count_if.RD_MON_MP rd_mon_if);
      super.new(wr_drv_if,wr_mon_if,rd_mon_if);      
   endfunction: new

   virtual task build();
      super.build();
   endtask: build
   
   virtual task run();  
      data_h2 = new();
      env_h.count_gen_h.gen_trans = data_h2;
      super.run();
   endtask: run      
   
endclass
