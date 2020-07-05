/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_505(char*, char *);
extern void execute_506(char*, char *);
extern void execute_507(char*, char *);
extern void execute_16(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_55(char*, char *);
extern void execute_70(char*, char *);
extern void execute_85(char*, char *);
extern void execute_100(char*, char *);
extern void execute_103(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_128(char*, char *);
extern void execute_133(char*, char *);
extern void execute_136(char*, char *);
extern void execute_149(char*, char *);
extern void execute_164(char*, char *);
extern void execute_178(char*, char *);
extern void execute_193(char*, char *);
extern void execute_207(char*, char *);
extern void execute_221(char*, char *);
extern void execute_229(char*, char *);
extern void execute_232(char*, char *);
extern void execute_247(char*, char *);
extern void execute_261(char*, char *);
extern void execute_274(char*, char *);
extern void execute_289(char*, char *);
extern void execute_317(char*, char *);
extern void execute_330(char*, char *);
extern void execute_335(char*, char *);
extern void execute_504(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[50] = {(funcp)execute_505, (funcp)execute_506, (funcp)execute_507, (funcp)execute_16, (funcp)execute_18, (funcp)execute_19, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_55, (funcp)execute_70, (funcp)execute_85, (funcp)execute_100, (funcp)execute_103, (funcp)execute_105, (funcp)execute_106, (funcp)execute_128, (funcp)execute_133, (funcp)execute_136, (funcp)execute_149, (funcp)execute_164, (funcp)execute_178, (funcp)execute_193, (funcp)execute_207, (funcp)execute_221, (funcp)execute_229, (funcp)execute_232, (funcp)execute_247, (funcp)execute_261, (funcp)execute_274, (funcp)execute_289, (funcp)execute_317, (funcp)execute_330, (funcp)execute_335, (funcp)execute_504, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_35, (funcp)transaction_151, (funcp)transaction_158, (funcp)transaction_165, (funcp)transaction_172};
const int NumRelocateId= 50;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_bitstuffingFSM_func_synth/xsim.reloc",  (void **)funcTab, 50);
	iki_vhdl_file_variable_register(dp + 80952);
	iki_vhdl_file_variable_register(dp + 81008);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_bitstuffingFSM_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_bitstuffingFSM_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_bitstuffingFSM_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_bitstuffingFSM_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_bitstuffingFSM_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
