########################
#				       #
#    IO Assignments    #
#   Author: Bin Tang   #
#				   	   #
########################

Version: 2

#LEFT ( IOs are ordered from bottom to top )

PAD: chip/VDD1 W
PAD: chip/VSS1 W
PAD: chip/clk_PAD W
PAD: chip/rst_PAD W
PAD: chip/data_recv_PAD[0] W
PAD: chip/data_recv_PAD[1] W
PAD: chip/data_recv_PAD[2] W
PAD: chip/data_recv_PAD[3] W

#RIGHT ( IOs are ordered from bottom to top )

PAD: chip/VDD2 E
PAD: chip/VSS2 E
PAD: chip/data_recv_PAD[4] E
PAD: chip/data_recv_PAD[5] E
PAD: chip/data_recv_PAD[6] E
PAD: chip/data_recv_PAD[7] E
PAD: chip/data_recv_PAD[8] E
PAD: chip/data_recv_PAD[9] E


#TOP ( IOs are ordered from left to right )

PAD: chip/VDD3 N
PAD: chip/VSS3 N
PAD: chip/data_recv_PAD[10] N
PAD: chip/data_recv_PAD[11] N
PAD: chip/data_recv_PAD[12] N
PAD: chip/data_recv_PAD[13] N
PAD: chip/data_recv_PAD[14] N
PAD: chip/data_recv_PAD[15] N
PAD: chip/data_dec_PAD[0] N

#BOTTOM ( IOs are ordered from left to right )

PAD: chip/VDD4 S
PAD: chip/VSS4 S
PAD: chip/data_dec_PAD[1] S
PAD: chip/data_dec_PAD[2] S
PAD: chip/data_dec_PAD[3] S
PAD: chip/data_dec_PAD[4] S
PAD: chip/data_dec_PAD[5] S
PAD: chip/data_dec_PAD[6] S
PAD: chip/data_dec_PAD[7] S

#CORNER PADS

Orient: R90
PAD: chip/cornerul NW

Orient: R180
PAD: chip/cornerll SW

Orient: R0
PAD: chip/cornerur NE

Orient: R270
PAD: chip/cornerlr SE
