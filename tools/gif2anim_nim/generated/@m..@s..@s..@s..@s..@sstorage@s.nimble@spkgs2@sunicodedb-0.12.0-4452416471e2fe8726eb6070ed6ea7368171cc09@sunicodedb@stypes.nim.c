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
typedef NI16 tyArray__vFzNu05J1fSB7LgYhpOnJA[17408];
typedef NI8 tyArray__qroKfdNo1yLt9bvGPMue9clA[23680];
typedef NI16 tyArray__Bmgxus43wnDXDfe0k81LwQ[12];
extern NIM_CONST tyArray__vFzNu05J1fSB7LgYhpOnJA typesOffsets__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes95data_u10;
extern NIM_CONST tyArray__qroKfdNo1yLt9bvGPMue9clA typesIndices__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes95data_u11;
extern NIM_CONST tyArray__Bmgxus43wnDXDfe0k81LwQ typesData__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes95data_u12;
N_LIB_PRIVATE N_NIMCALL(NI, unicodeTypes__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes_u3)(NI32 cp_p0) {
	NI result;
	NI blockOffset;
	NI8 idx;
	result = (NI)0;
	blockOffset = (NI)(((NI) (typesOffsets__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes95data_u10[((NI)(((NI) (cp_p0)) / ((NI)64)))- 0])) * ((NI)64));
	idx = typesIndices__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes95data_u11[((NI)(blockOffset + (NI)(((NI) (cp_p0)) % ((NI)64))))- 0];
	result = ((NI) (typesData__OOZOOZOOZOOZOOZstorageZOnimbleZpkgs50Zunicodedb4548O4950O484552525350524954525549e50fe56555054eb54485548ed54ea55515456495549cc4857ZunicodedbZtypes95data_u12[(idx)- 0]));
	return result;
}
