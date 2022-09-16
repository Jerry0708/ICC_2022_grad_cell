module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

//---def param---
localparam
	FIND_POINT = 0,
	FIND_MIN   = 1,
	SWAP_VAL   = 2,
	ROTATE	   = 3;

localparam
	READ_FIRST_DATA = 0,
	READ_OTHER_DATA = 1,
	SUM_END   		= 2,
	KEEP_VALUE	    = 3;

//---def fsm reg---
reg [1:0]cur_state;
reg [1:0]next_state;

//---def reg---
integer i;
reg [2:0]array[0:7];
reg [2:0]n_point;
reg [2:0]point;
reg [3:0]min;
reg [2:0]min_addr;
reg [9:0]sum;
reg [3:0]cnt_read;
wire end_flag;

assign end_flag = (array[0]==7 && array[1]==6 && array[2]==5 && array[3]==4 && array[4]==3 && array[5]==2 && array[6]==1 && array[7]==0);

//---FSM---
always@(posedge CLK) begin
	if(RST)	cur_state <= 2'd0;
	else 	cur_state <= next_state;
end

//---state transfer
always@(*) begin
	case(cur_state)
		0:
		begin
			if(end_flag)	
				next_state = 0;
			else 						
				next_state = 1;
		end
		1:
		begin
			if(n_point == 7 && cnt_read==8) next_state = 2;
			else 		   				    next_state = 1;
		end
		2 : next_state = 3;
		3 : next_state = 0;
	endcase
end

//---全排列---
always@(posedge CLK) begin
	if(RST) begin
		for(i=0; i<=3'd7; i=i+1) array[i] <= i;
		n_point <= 3'd0;
		point <= 3'd0;
		min <= 4'd8;
		min_addr <= 3'd0;
		Valid <= 0;
 	end
	else begin
		case(cur_state)
			FIND_POINT:
			begin
				if(end_flag)
					Valid <= 1;
				else 
					Valid <= 0;
				
				if(array[7]>array[6]) begin
					point <= 6;
					n_point <= 7;
				end
				else if(array[6]>array[5])begin
					point <= 5;
					n_point <= 6;
				end
				else if(array[5]>array[4])begin
					point <= 4;
					n_point <= 5;
				end
				else if(array[4]>array[3])begin
					point <= 3;
					n_point <= 4;
				end
				else if(array[3]>array[2])begin
					point <= 2;
					n_point <= 3;
				end
				else if(array[2]>array[1])begin
					point <= 1;
					n_point <= 2;
				end
				else if(array[1]>array[0]) begin
					point <= 0;
					n_point <= 1;
				end
				else begin
					point <= 0;
					n_point <= 0;
				end
			end
			FIND_MIN:
			begin
				if(n_point==7)
					n_point <= 7;
				else 
					n_point <= n_point + 1'b1;
					
				if(array[n_point] > array[point]) begin
					if(min > array[n_point]) begin
						min <= array[n_point];
						min_addr <= n_point;
					end
				end
			end
			SWAP_VAL:
			begin
				n_point <= 0;
				min <= 8;
				array[min_addr] <= array[point];
				array[point] <= array[min_addr];
			end
			ROTATE: 
			begin
				case(point)
					0:	
					begin
						array[1] <= array[7];
						array[2] <= array[6];
						array[3] <= array[5];
						array[7] <= array[1];
						array[6] <= array[2];
						array[5] <= array[3];
					end
					1:
					begin
						array[2] <= array[7];
						array[3] <= array[6];
						array[4] <= array[5];
						array[7] <= array[2];
						array[6] <= array[3];
						array[5] <= array[4];
					end
					2:
					begin
						array[3] <= array[7];
						array[4] <= array[6];
						array[7] <= array[3];
						array[6] <= array[4];
					end
					3:
					begin
						array[4] <= array[7];
						array[5] <= array[6];
						array[7] <= array[4];
						array[6] <= array[5];
					end
					4:
					begin
						array[5] <= array[7];
						array[7] <= array[5];
					end
					5:
					begin
						array[6] <= array[7];
						array[7] <= array[6];
					end
				endcase
			end
		endcase
	end
end

//---算最小值可以和排列同時進行---
always@(posedge CLK) begin
	if(RST) begin
		cnt_read <= 4'd1;
		sum <= 10'd0;
		MatchCount <= 4'd1;
		MinCost <= 10'd1023;
		W <= 3'd0;
		J <= 3'd0;
	end
	else begin
		case(cur_state)
			READ_FIRST_DATA:	
			begin	
				if(cnt_read==1) begin	
					W <= cnt_read;
					J <= array[cnt_read];
					cnt_read <= cnt_read + 1'b1;
				end
				else begin
					W <= 2;
					J <= array[2];
					cnt_read <= 3;
					sum <= Cost;
				end
			end
			READ_OTHER_DATA:	
			begin
				cnt_read <= cnt_read + 1'b1;
				if(cnt_read==2) begin	
					W <= 2;
					J <= array[2];
					sum <= Cost;
				end
				else begin
					sum <= sum + Cost;
					if(cnt_read<8) begin
						W <= cnt_read;
						J <= array[cnt_read];
					end
				end
			end
			SUM_END:
			begin
				W <= 0;
				J <= array[0];
				cnt_read <= 1;
				sum <= sum + Cost;
			end
			KEEP_VALUE:
			begin
				W <= 1;
				J <= array[1];
				cnt_read <= 2;
				sum <= 0;
				
				if(sum < MinCost) begin
					MinCost <= sum;
					MatchCount <= 1;
				end
				else if(sum == MinCost) begin
					MatchCount <= MatchCount + 1'b1;
				end
			end
		endcase
	end
end


endmodule


