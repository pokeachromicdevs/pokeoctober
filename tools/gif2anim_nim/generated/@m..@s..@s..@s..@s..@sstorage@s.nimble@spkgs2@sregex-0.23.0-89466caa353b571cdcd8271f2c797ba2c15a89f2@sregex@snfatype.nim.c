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
typedef struct tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ;
typedef struct tySequence__wKsMdMENAqYrYo9cfmd46Yw tySequence__wKsMdMENAqYrYo9cfmd46Yw;
typedef struct tySequence__9aKpvUh0ca6Bp9cKAwrowqUg tySequence__9aKpvUh0ca6Bp9cKAwrowqUg;
typedef struct TNimType TNimType;
typedef struct TNimNode TNimNode;
typedef struct tyTuple__nZa43OosM5c7Fg4Tvy85Pg tyTuple__nZa43OosM5c7Fg4Tvy85Pg;
typedef struct tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg;
typedef struct TGenericSeq TGenericSeq;
typedef struct tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg;
typedef struct tySequence__GX4JocpvMgmsPCIO57UlKQ tySequence__GX4JocpvMgmsPCIO57UlKQ;
typedef struct tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw;
typedef struct tySequence__BRkza1WvIAH1w9a0SoLUaEA tySequence__BRkza1WvIAH1w9a0SoLUaEA;
typedef struct NimStringDesc NimStringDesc;
typedef struct tySequence__q4T10owtl6ntcr00RXBlkw tySequence__q4T10owtl6ntcr00RXBlkw;
typedef struct tySequence__SR5N3GrHhCoW6s49awcDrCA tySequence__SR5N3GrHhCoW6s49awcDrCA;
struct tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ {
	tySequence__wKsMdMENAqYrYo9cfmd46Yw* sx;
	tySequence__9aKpvUh0ca6Bp9cKAwrowqUg* ss;
	NI16 si;
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
struct tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg {
	NI a;
	NI b;
};
struct tyTuple__nZa43OosM5c7Fg4Tvy85Pg {
NI16 Field0;
NI32 Field1;
tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg Field2;
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
struct TGenericSeq {
	NI len;
	NI reserved;
};
struct tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg {
	NI32 parent;
	NI bound;
	NI16 idx;
};
struct tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw {
	tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ* a;
	tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ* b;
};
struct NimStringDesc {
  TGenericSeq Sup;
	NIM_CHAR data[SEQ_DECL_SIZE];
};
struct tySequence__wKsMdMENAqYrYo9cfmd46Yw {
  TGenericSeq Sup;
  tyTuple__nZa43OosM5c7Fg4Tvy85Pg data[SEQ_DECL_SIZE];
};
struct tySequence__9aKpvUh0ca6Bp9cKAwrowqUg {
  TGenericSeq Sup;
  NI16 data[SEQ_DECL_SIZE];
};
struct tySequence__GX4JocpvMgmsPCIO57UlKQ {
  TGenericSeq Sup;
  tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg data[SEQ_DECL_SIZE];
};
struct tySequence__BRkza1WvIAH1w9a0SoLUaEA {
  TGenericSeq Sup;
  tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw data[SEQ_DECL_SIZE];
};
struct tySequence__q4T10owtl6ntcr00RXBlkw {
  TGenericSeq Sup;
  tyObject_HSlice__M59bWryXDzi9cuLaUQXWQ7fg data[SEQ_DECL_SIZE];
};
struct tySequence__SR5N3GrHhCoW6s49awcDrCA {
  TGenericSeq Sup;
  tySequence__q4T10owtl6ntcr00RXBlkw* data[SEQ_DECL_SIZE];
};
static N_NIMCALL(void, Marker_tySequence__wKsMdMENAqYrYo9cfmd46Yw)(void* p, NI op);
static N_NIMCALL(void, Marker_tySequence__9aKpvUh0ca6Bp9cKAwrowqUg)(void* p, NI op);
N_LIB_PRIVATE N_NIMCALL(void, nimGCvisit)(void* d_p0, NI op_p1);
static N_NIMCALL(void, Marker_tyRef__u50CvpvwBe3PZtQYnApQsw)(void* p, NI op);
static N_NIMCALL(void, Marker_tySequence__GX4JocpvMgmsPCIO57UlKQ)(void* p, NI op);
static N_NIMCALL(void, Marker_tySequence__BRkza1WvIAH1w9a0SoLUaEA)(void* p, NI op);
N_LIB_PRIVATE N_NIMCALL(void, failedAssertImpl__stdZassertions_u85)(NimStringDesc* msg_p0);
static N_NIMCALL(void, Marker_tySequence__q4T10owtl6ntcr00RXBlkw)(void* p, NI op);
static N_NIMCALL(void, Marker_tySequence__SR5N3GrHhCoW6s49awcDrCA)(void* p, NI op);
N_LIB_PRIVATE TNimType NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_;
N_LIB_PRIVATE TNimType NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_;
N_LIB_PRIVATE TNimType NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_;
N_LIB_PRIVATE TNimType NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_;
extern TNimType NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_;
N_LIB_PRIVATE TNimType NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_;
N_LIB_PRIVATE TNimType NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_;
N_LIB_PRIVATE TNimType NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_;
N_LIB_PRIVATE TNimType NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_;
extern TNimType NTIint__rR5Bzr1D5krxoo1NcNyeMA_;
N_LIB_PRIVATE TNimType NTIcapts__GX4JocpvMgmsPCIO57UlKQ_;
N_LIB_PRIVATE TNimType NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_;
N_LIB_PRIVATE TNimType NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_;
STRING_LITERAL(TM__nFDhKUTnKqMN59a9ccLcPKrA_6, "nfatype.nim(209, 3) `a >= b` ", 29);
N_LIB_PRIVATE TNimType NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_;
N_LIB_PRIVATE TNimType NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_;
static N_NIMCALL(void, Marker_tySequence__wKsMdMENAqYrYo9cfmd46Yw)(void* p, NI op) {
	tySequence__wKsMdMENAqYrYo9cfmd46Yw* a;
	NI T1_;
	a = (tySequence__wKsMdMENAqYrYo9cfmd46Yw*)p;
	T1_ = (NI)0;
}
static N_NIMCALL(void, Marker_tySequence__9aKpvUh0ca6Bp9cKAwrowqUg)(void* p, NI op) {
	tySequence__9aKpvUh0ca6Bp9cKAwrowqUg* a;
	NI T1_;
	a = (tySequence__9aKpvUh0ca6Bp9cKAwrowqUg*)p;
	T1_ = (NI)0;
}
static N_NIMCALL(void, Marker_tyRef__u50CvpvwBe3PZtQYnApQsw)(void* p, NI op) {
	tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ* a;
	a = (tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ*)p;
	nimGCvisit((void*)(*a).sx, op);
	nimGCvisit((void*)(*a).ss, op);
}
static N_NIMCALL(void, Marker_tySequence__GX4JocpvMgmsPCIO57UlKQ)(void* p, NI op) {
	tySequence__GX4JocpvMgmsPCIO57UlKQ* a;
	NI T1_;
	a = (tySequence__GX4JocpvMgmsPCIO57UlKQ*)p;
	T1_ = (NI)0;
}
static N_NIMCALL(void, Marker_tySequence__BRkza1WvIAH1w9a0SoLUaEA)(void* p, NI op) {
	tySequence__BRkza1WvIAH1w9a0SoLUaEA* a;
	NI T1_;
	a = (tySequence__BRkza1WvIAH1w9a0SoLUaEA*)p;
	T1_ = (NI)0;
	for (T1_ = 0; T1_ < (a ? a->Sup.len : 0); T1_++) {
	nimGCvisit((void*)a->data[T1_].a, op);
	nimGCvisit((void*)a->data[T1_].b, op);
	}
}
N_LIB_PRIVATE N_NIMCALL(NI32, reverse__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zregex4548O5051O48455657525454caa515351b535549cdcd56505549f50c555755ba50c4953a5657f50ZregexZnfatype_u797)(tySequence__GX4JocpvMgmsPCIO57UlKQ** capts_p0, NI32 a_p1, NI32 b_p2) {
	NI32 result;
	NI32 capt;
	NI32 parent;
{	result = (NI32)0;
	{
		if (!!((b_p2 <= a_p1))) goto LA3_;
		failedAssertImpl__stdZassertions_u85(((NimStringDesc*) &TM__nFDhKUTnKqMN59a9ccLcPKrA_6));
	}
LA3_: ;
	capt = a_p1;
	parent = b_p2;
	{
		while (1) {
			NI32 p;
			if (!!((capt == b_p2))) goto LA6;
			p = (*capts_p0)->data[capt].parent;
			(*capts_p0)->data[capt].parent = parent;
			parent = capt;
			capt = p;
		} LA6: ;
	}
	result = parent;
	goto BeforeRet_;
	}BeforeRet_: ;
	return result;
}
static N_NIMCALL(void, Marker_tySequence__q4T10owtl6ntcr00RXBlkw)(void* p, NI op) {
	tySequence__q4T10owtl6ntcr00RXBlkw* a;
	NI T1_;
	a = (tySequence__q4T10owtl6ntcr00RXBlkw*)p;
	T1_ = (NI)0;
}
static N_NIMCALL(void, Marker_tySequence__SR5N3GrHhCoW6s49awcDrCA)(void* p, NI op) {
	tySequence__SR5N3GrHhCoW6s49awcDrCA* a;
	NI T1_;
	a = (tySequence__SR5N3GrHhCoW6s49awcDrCA*)p;
	T1_ = (NI)0;
	for (T1_ = 0; T1_ < (a ? a->Sup.len : 0); T1_++) {
	nimGCvisit((void*)a->data[T1_], op);
	}
}
N_LIB_PRIVATE N_NIMCALL(void, atmdotdotatsdotdotatsdotdotatsdotdotatsdotdotatsstorageatsdotnimbleatspkgs2atsregexminus0dot23dot0minus89466caa353b571cdcd8271f2c797ba2c15a89f2atsregexatsnfatypedotnim_DatInit000)(void) {
static TNimNode* TM__nFDhKUTnKqMN59a9ccLcPKrA_2_3[3];
static TNimNode* TM__nFDhKUTnKqMN59a9ccLcPKrA_3_3[3];
static TNimNode* TM__nFDhKUTnKqMN59a9ccLcPKrA_4_3[3];
static TNimNode* TM__nFDhKUTnKqMN59a9ccLcPKrA_5_2[2];
static TNimNode TM__nFDhKUTnKqMN59a9ccLcPKrA_0[15];
NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_.size = sizeof(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ);
NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_.align = NIM_ALIGNOF(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ);
NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_.kind = 18;
NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_.base = 0;
NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_.flags = 2;
TM__nFDhKUTnKqMN59a9ccLcPKrA_2_3[0] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[1];
NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_.size = sizeof(tyTuple__nZa43OosM5c7Fg4Tvy85Pg);
NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_.align = NIM_ALIGNOF(tyTuple__nZa43OosM5c7Fg4Tvy85Pg);
NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_.kind = 18;
NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_.base = 0;
NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_.flags = 3;
TM__nFDhKUTnKqMN59a9ccLcPKrA_3_3[0] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[3];
NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_.size = sizeof(NI16);
NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_.align = NIM_ALIGNOF(NI16);
NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_.kind = 33;
NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_.base = 0;
NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_.flags = 3;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[3].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[3].offset = offsetof(tyTuple__nZa43OosM5c7Fg4Tvy85Pg, Field0);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[3].typ = (&NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[3].name = "Field0";
TM__nFDhKUTnKqMN59a9ccLcPKrA_3_3[1] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[4];
NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_.size = sizeof(NI32);
NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_.align = NIM_ALIGNOF(NI32);
NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_.kind = 34;
NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_.base = 0;
NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_.flags = 3;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[4].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[4].offset = offsetof(tyTuple__nZa43OosM5c7Fg4Tvy85Pg, Field1);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[4].typ = (&NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[4].name = "Field1";
TM__nFDhKUTnKqMN59a9ccLcPKrA_3_3[2] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[5];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[5].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[5].offset = offsetof(tyTuple__nZa43OosM5c7Fg4Tvy85Pg, Field2);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[5].typ = (&NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[5].name = "Field2";
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[2].len = 3; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[2].kind = 2; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[2].sons = &TM__nFDhKUTnKqMN59a9ccLcPKrA_3_3[0];
NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_.node = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[2];
NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_.size = sizeof(tySequence__wKsMdMENAqYrYo9cfmd46Yw*);
NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_.align = NIM_ALIGNOF(tySequence__wKsMdMENAqYrYo9cfmd46Yw*);
NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_.kind = 24;
NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_.base = (&NTIpstate__nZa43OosM5c7Fg4Tvy85Pg_);
NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_.flags = 2;
NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_.marker = Marker_tySequence__wKsMdMENAqYrYo9cfmd46Yw;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[1].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[1].offset = offsetof(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ, sx);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[1].typ = (&NTIseqLpstateT__wKsMdMENAqYrYo9cfmd46Yw_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[1].name = "sx";
TM__nFDhKUTnKqMN59a9ccLcPKrA_2_3[1] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[6];
NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_.size = sizeof(tySequence__9aKpvUh0ca6Bp9cKAwrowqUg*);
NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_.align = NIM_ALIGNOF(tySequence__9aKpvUh0ca6Bp9cKAwrowqUg*);
NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_.kind = 24;
NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_.base = (&NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_);
NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_.flags = 2;
NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_.marker = Marker_tySequence__9aKpvUh0ca6Bp9cKAwrowqUg;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[6].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[6].offset = offsetof(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ, ss);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[6].typ = (&NTIseqLint4954T__9aKpvUh0ca6Bp9cKAwrowqUg_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[6].name = "ss";
TM__nFDhKUTnKqMN59a9ccLcPKrA_2_3[2] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[7];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[7].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[7].offset = offsetof(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ, si);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[7].typ = (&NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[7].name = "si";
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[0].len = 3; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[0].kind = 2; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[0].sons = &TM__nFDhKUTnKqMN59a9ccLcPKrA_2_3[0];
NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_.node = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[0];
NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_.size = sizeof(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ*);
NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_.align = NIM_ALIGNOF(tyObject_SubmatchescolonObjectType___TEwnjDfaPRUa47dyoPZ6sQ*);
NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_.kind = 22;
NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_.base = (&NTIsubmatches58objecttype__TEwnjDfaPRUa47dyoPZ6sQ_);
NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_.flags = 2;
NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_.marker = Marker_tyRef__u50CvpvwBe3PZtQYnApQsw;
NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_.size = sizeof(tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg);
NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_.align = NIM_ALIGNOF(tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg);
NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_.kind = 18;
NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_.base = 0;
NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_.flags = 3;
TM__nFDhKUTnKqMN59a9ccLcPKrA_4_3[0] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[9];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[9].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[9].offset = offsetof(tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg, parent);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[9].typ = (&NTIcaptidx__sVg18TP9cLifHyygRe9cro9aA_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[9].name = "parent";
TM__nFDhKUTnKqMN59a9ccLcPKrA_4_3[1] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[10];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[10].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[10].offset = offsetof(tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg, bound);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[10].typ = (&NTIint__rR5Bzr1D5krxoo1NcNyeMA_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[10].name = "bound";
TM__nFDhKUTnKqMN59a9ccLcPKrA_4_3[2] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[11];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[11].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[11].offset = offsetof(tyObject_CaptNode__ZHVIuZJ9cTT9cf7Rpi4iPhfg, idx);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[11].typ = (&NTInodeidx__kDPg4wXyR8DDyA0MeEjIsw_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[11].name = "idx";
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[8].len = 3; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[8].kind = 2; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[8].sons = &TM__nFDhKUTnKqMN59a9ccLcPKrA_4_3[0];
NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_.node = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[8];
NTIcapts__GX4JocpvMgmsPCIO57UlKQ_.size = sizeof(tySequence__GX4JocpvMgmsPCIO57UlKQ*);
NTIcapts__GX4JocpvMgmsPCIO57UlKQ_.align = NIM_ALIGNOF(tySequence__GX4JocpvMgmsPCIO57UlKQ*);
NTIcapts__GX4JocpvMgmsPCIO57UlKQ_.kind = 24;
NTIcapts__GX4JocpvMgmsPCIO57UlKQ_.base = (&NTIcaptnode__ZHVIuZJ9cTT9cf7Rpi4iPhfg_);
NTIcapts__GX4JocpvMgmsPCIO57UlKQ_.flags = 2;
NTIcapts__GX4JocpvMgmsPCIO57UlKQ_.marker = Marker_tySequence__GX4JocpvMgmsPCIO57UlKQ;
NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_.size = sizeof(tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw);
NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_.align = NIM_ALIGNOF(tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw);
NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_.kind = 18;
NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_.base = 0;
NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_.flags = 2;
TM__nFDhKUTnKqMN59a9ccLcPKrA_5_2[0] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[13];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[13].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[13].offset = offsetof(tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw, a);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[13].typ = (&NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[13].name = "a";
TM__nFDhKUTnKqMN59a9ccLcPKrA_5_2[1] = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[14];
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[14].kind = 1;
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[14].offset = offsetof(tyObject_SmLookaroundItem__xNGjX81q5Gc9bCR8W79cSBWw, b);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[14].typ = (&NTIsubmatches__u50CvpvwBe3PZtQYnApQsw_);
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[14].name = "b";
TM__nFDhKUTnKqMN59a9ccLcPKrA_0[12].len = 2; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[12].kind = 2; TM__nFDhKUTnKqMN59a9ccLcPKrA_0[12].sons = &TM__nFDhKUTnKqMN59a9ccLcPKrA_5_2[0];
NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_.node = &TM__nFDhKUTnKqMN59a9ccLcPKrA_0[12];
NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_.size = sizeof(tySequence__BRkza1WvIAH1w9a0SoLUaEA*);
NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_.align = NIM_ALIGNOF(tySequence__BRkza1WvIAH1w9a0SoLUaEA*);
NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_.kind = 24;
NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_.base = (&NTIsmlookarounditem__xNGjX81q5Gc9bCR8W79cSBWw_);
NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_.flags = 2;
NTIseqLsmlookarounditemT__BRkza1WvIAH1w9a0SoLUaEA_.marker = Marker_tySequence__BRkza1WvIAH1w9a0SoLUaEA;
NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_.size = sizeof(tySequence__q4T10owtl6ntcr00RXBlkw*);
NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_.align = NIM_ALIGNOF(tySequence__q4T10owtl6ntcr00RXBlkw*);
NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_.kind = 24;
NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_.base = (&NTIhslice__M59bWryXDzi9cuLaUQXWQ7fg_);
NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_.flags = 2;
NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_.marker = Marker_tySequence__q4T10owtl6ntcr00RXBlkw;
NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_.size = sizeof(tySequence__SR5N3GrHhCoW6s49awcDrCA*);
NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_.align = NIM_ALIGNOF(tySequence__SR5N3GrHhCoW6s49awcDrCA*);
NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_.kind = 24;
NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_.base = (&NTIseqLsliceLsystemOintTT__q4T10owtl6ntcr00RXBlkw_);
NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_.flags = 2;
NTIcaptures__SR5N3GrHhCoW6s49awcDrCA_.marker = Marker_tySequence__SR5N3GrHhCoW6s49awcDrCA;
}

