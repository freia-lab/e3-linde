program CV520xValveCtrl



ss CV5202_sm {

int CV5202_sOpen, CV5202_Cmd;
int CV5202_cAuto, CM_CV5202_sOpenReq, CstatH_CV5202_sOpenReq;
int CstatH_CM_mode;

assign CV5202_sOpen  "Cryo-Dwr:Dwr:StCV5202_Slctd";
assign CV5202_Cmd    "Cryo-Dwr:CV-5202:OpenClsCmd";
assign CV5202_cAuto  "Cryo-Dwr:CV5202:cAuto";
assign CstatH_CM_mode "CstatH-Ctrl:opMode:sCMmode";

assign CM_CV5202_sOpenReq "CM-Ctrl:CV5202:sOpenReq";
assign CstatH_CV5202_sOpenReq "CstatH-Ctrl:CV5202:sOpenReq";

monitor CV5202_sOpen;
monitor CV5202_cAuto;
monitor CM_CV5202_sOpenReq;
monitor CstatH_CM_mode;

   state waiting {
       entry {
           printf ("CV5202_sm: Entered waiting state\n");
       } 

       when (delay(15) && (CV5202_sOpen == 0)) {
       } state CV5202_closed

       when (delay(15) && (CV5202_sOpen == 1)) {
       } state CV5202_open
   }

   state CV5202_open {
       entry {
           printf ("Entered CV5202_open state\n");
       }
       when ((CV5202_cAuto == 1) && 
       ((CstatH_CM_mode == 1 && CM_CV5202_sOpenReq == 0) ||
       (CstatH_CM_mode == 0 && CstatH_CV5202_sOpenReq == 0))) {
           printf ("Send close CV5202 cmd\n");
	   CV5202_Cmd = 1;
	   pvPut (CV5202_Cmd);
       } state waiting
       when (CV5202_sOpen == 0) {} state waiting
   }

   state CV5202_closed {
       entry {
           printf ("Entered CV5202_closed state\n");
       }
       when ((CV5202_cAuto == 1) && 
       ((CstatH_CM_mode == 1 && CM_CV5202_sOpenReq == 1) ||
       (CstatH_CM_mode == 0 && CstatH_CV5202_sOpenReq == 1))) {
           printf ("Send open CV5202 cmd\n");
	   CV5202_Cmd = 1;
	   pvPut (CV5202_Cmd);
       } state waiting
       when (CV5202_sOpen == 1) {} state waiting
   }

}


ss CV5203_sm {

int CV5203_sOpen, CV5203_Cmd;
int CV5203_cAuto, CV5203_sOpenReq;

assign CV5203_sOpen  "Cryo-Dwr:Dwr:StCV5203_Slctd";
assign CV5203_Cmd    "Cryo-Dwr:CV-5203:OpenClsCmd";
assign CV5203_cAuto  "Cryo-Dwr:CV5203:cAuto";

assign CV5203_sOpenReq "CstatV-Ctrl:CV5203:sOpenReq";

monitor CV5203_sOpen;
monitor CV5203_cAuto;
monitor CV5203_sOpenReq;


   state waiting {
       entry {
           printf ("CV5203_sm: Entered waiting state\n");
       } 

       when (delay(15) && (CV5203_sOpen == 0)) {
       } state CV5203_closed

       when (delay(15) && (CV5203_sOpen == 1)) {
       } state CV5203_open
   }

   state CV5203_open {
       entry {
           printf ("Entered CV5203_open state\n");
       }
       when ((CV5203_cAuto == 1) && (CV5203_sOpenReq == 0)) {
           printf ("Send close CV5203 cmd\n");
	   CV5203_Cmd = 1;
	   pvPut (CV5203_Cmd);
       } state waiting
       when (CV5203_sOpen == 0) {} state waiting
   }

   state CV5203_closed {
       entry {
           printf ("Entered CV5203_closed state\n");
       }
       when ((CV5203_cAuto == 1) && (CV5203_sOpenReq == 1)) {
           printf ("Send open CV5203 cmd\n");
	   CV5203_Cmd = 1;
	   pvPut (CV5203_Cmd);
       } state waiting
       when (CV5203_sOpen == 1) {} state waiting
   }
}

