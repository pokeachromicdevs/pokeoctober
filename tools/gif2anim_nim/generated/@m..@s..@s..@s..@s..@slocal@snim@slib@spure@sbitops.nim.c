/* Generated by Nim Compiler v2.0.0 */
#define NIM_INTBITS 64

#include "nimbase.h"
#undef LANGUAGE_C
#undef MIPSEB
#undef MIPSEL
#undef PPC
#undef R3000
#undef R4000
#undef i386
#undef linux
#undef mips
#undef near
#undef far
#undef powerpc
#undef unix
typedef struct tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg;
typedef struct TNimType TNimType;
typedef struct TNimNode TNimNode;
struct tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg {
	NI a;
	NI b;
};
typedef NU8 tyEnum_TNimKind__s6ZcSDNFp3kckyTmY9aSLZg;
typedef NU8 tySet_tyEnum_TNimTypeFlag__aoWLvMcfLzvUu4CDTz9artQ;
typedef N_NIMCALL_PTR(void, tyProc__ojoeKfW4VYIm36I9cpDTQIg) (void* p_p0, NI op_p1);
typedef N_NIMCALL_PTR(void*, tyProc__WSm2xU5ARYv9aAR4l0z9c9auQ) (void* p_p0);
struct TNimType {
	NI size;
	NI align;
	tyEnum_TNimKind__s6ZcSDNFp3kckyTmY9aSLZg kind;
	tySet_tyEnum_TNimTypeFlag__aoWLvMcfLzvUu4CDTz9artQ flags;
	TNimType* base;
	TNimNode* node;
	void* finalizer;
	tyProc__ojoeKfW4VYIm36I9cpDTQIg marker;
	tyProc__WSm2xU5ARYv9aAR4l0z9c9auQ deepcopy;
};
typedef NU8 tyEnum_TNimNodeKind__9aly59b39a9aIjsOj9adkT4M1QA;
struct TNimNode {
	tyEnum_TNimNodeKind__9aly59b39a9aIjsOj9adkT4M1QA kind;
	NI offset;
	TNimType* typ;
	NCSTRING name;
	NI len;
	TNimNode** sons;
};
N_LIB_PRIVATE TNimType NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_;
extern TNimType NTIint__rR5Bzr1D5krxoo1NcNyeMA_;
N_LIB_PRIVATE N_NIMCALL(void, atmdotdotatsdotdotatsdotdotatsdotdotatsdotdotatslocalatsnimatslibatspureatsbitopsdotnim_DatInit000)(void) {
static TNimNode* TM__W3sLO858Ia9beeg6r59cMWjg_2_2[2];
static TNimNode TM__W3sLO858Ia9beeg6r59cMWjg_0[3];
NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_.size = sizeof(tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg);
NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_.align = NIM_ALIGNOF(tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg);
NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_.kind = 18;
NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_.base = 0;
NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_.flags = 3;
TM__W3sLO858Ia9beeg6r59cMWjg_2_2[0] = &TM__W3sLO858Ia9beeg6r59cMWjg_0[1];
TM__W3sLO858Ia9beeg6r59cMWjg_0[1].kind = 1;
TM__W3sLO858Ia9beeg6r59cMWjg_0[1].offset = offsetof(tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg, a);
TM__W3sLO858Ia9beeg6r59cMWjg_0[1].typ = (&NTIint__rR5Bzr1D5krxoo1NcNyeMA_);
TM__W3sLO858Ia9beeg6r59cMWjg_0[1].name = "a";
TM__W3sLO858Ia9beeg6r59cMWjg_2_2[1] = &TM__W3sLO858Ia9beeg6r59cMWjg_0[2];
TM__W3sLO858Ia9beeg6r59cMWjg_0[2].kind = 1;
TM__W3sLO858Ia9beeg6r59cMWjg_0[2].offset = offsetof(tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg, b);
TM__W3sLO858Ia9beeg6r59cMWjg_0[2].typ = (&NTIint__rR5Bzr1D5krxoo1NcNyeMA_);
TM__W3sLO858Ia9beeg6r59cMWjg_0[2].name = "b";
TM__W3sLO858Ia9beeg6r59cMWjg_0[0].len = 2; TM__W3sLO858Ia9beeg6r59cMWjg_0[0].kind = 2; TM__W3sLO858Ia9beeg6r59cMWjg_0[0].sons = &TM__W3sLO858Ia9beeg6r59cMWjg_2_2[0];
NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_.node = &TM__W3sLO858Ia9beeg6r59cMWjg_0[0];
}

