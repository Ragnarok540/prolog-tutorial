#include <string.h>
#include <gprolog.h>

PlBool all_op(PlTerm list) {
    PlTerm op[1024];
    PlTerm args[3];
    int n = 0;
    int result;

    Pl_Query_Begin(PL_TRUE);
    args[0] = Pl_Mk_Variable();
    args[1] = Pl_Mk_Variable();
    args[2] = Pl_Mk_Variable();
    result = Pl_Query_Call(Find_Atom("current_op"), 3, args);

    while (result) {
        op[n++] = Pl_Mk_Atom(Pl_Rd_Atom(args[2])); /* arg[2]: the name of the op */
        result = Pl_Query_Next_Solution();
    }

    Pl_Query_End(PL_RECOVER);

    return Pl_Un_Proper_List_Check(n, op, list);
}
