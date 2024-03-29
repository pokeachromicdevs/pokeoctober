/* Generated by Nim Compiler v2.0.0 */
#define NIM_INTBITS 64

#include "nimbase.h"
#include <string.h>
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
typedef struct NimStringDesc NimStringDesc;
typedef struct TGenericSeq TGenericSeq;
typedef struct tyObject_Image__zBV2iak9cX7UnDZyTKvgWMA tyObject_Image__zBV2iak9cX7UnDZyTKvgWMA;
typedef struct tyTuple__nZRsuW3vVhtr4fxcIHvHug tyTuple__nZRsuW3vVhtr4fxcIHvHug;
typedef struct tySequence__YxVBzAqtdmlNKjBrNUumUA tySequence__YxVBzAqtdmlNKjBrNUumUA;
typedef struct tySequence__YdLNCDKYeipzJx3I8Xw82Q tySequence__YdLNCDKYeipzJx3I8Xw82Q;
typedef struct tyObject_ImageMetadata__RuD6Gub53ZKBcSXZouFpyQ tyObject_ImageMetadata__RuD6Gub53ZKBcSXZouFpyQ;
typedef struct tySequence__6H5Oh5UUvVCLiakt9aTwtUQ tySequence__6H5Oh5UUvVCLiakt9aTwtUQ;
typedef struct tySequence__0VINy3NBD9cXT6gXoqNtEAA tySequence__0VINy3NBD9cXT6gXoqNtEAA;
typedef struct tySequence__7Ywui5YuLuwDNMSznJyfIg tySequence__7Ywui5YuLuwDNMSznJyfIg;
typedef struct tyObject_PlumRect__IKdcQaQvw1OnIJkV2FFBgA tyObject_PlumRect__IKdcQaQvw1OnIJkV2FFBgA;
struct TGenericSeq {
	NI len;
	NI reserved;
};
struct NimStringDesc {
  TGenericSeq Sup;
	NIM_CHAR data[SEQ_DECL_SIZE];
};
typedef NU16 tyEnum_PlumImageType__snk4fiNtMIEsrdL9a26obbA;
typedef NI32 tyEnum_PlumFlags__0yisctWXESruE8AGpMLRIg;
struct tyTuple__nZRsuW3vVhtr4fxcIHvHug {
NU32 Field0;
NU32 Field1;
};
struct tyObject_Image__zBV2iak9cX7UnDZyTKvgWMA {
	tyEnum_PlumImageType__snk4fiNtMIEsrdL9a26obbA imageType;
	tyEnum_PlumFlags__0yisctWXESruE8AGpMLRIg format;
	NU32 numFrames;
	tyTuple__nZRsuW3vVhtr4fxcIHvHug dimensions;
	tySequence__YxVBzAqtdmlNKjBrNUumUA* metadata;
	tySequence__YdLNCDKYeipzJx3I8Xw82Q* imagePalettes;
	tySequence__YdLNCDKYeipzJx3I8Xw82Q* imageData;
};
typedef NI32 tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA;
struct tyObject_ImageMetadata__RuD6Gub53ZKBcSXZouFpyQ {
	tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA metaType;
union{
struct {	tySequence__6H5Oh5UUvVCLiakt9aTwtUQ* componentDepth;
} _metaType_1;
struct {	NU64 bgColor;
} _metaType_2;
struct {	NU32 loopCount;
} _metaType_3;
struct {	tySequence__YdLNCDKYeipzJx3I8Xw82Q* frameDurations;
} _metaType_4;
struct {	tySequence__0VINy3NBD9cXT6gXoqNtEAA* frameDisposals;
} _metaType_5;
struct {	tySequence__7Ywui5YuLuwDNMSznJyfIg* frameAreas;
} _metaType_6;
};
};
typedef NU8 tyEnum_PlumFrameDisposal__OVaNSJyQmW37of9a5cZN9aZw;
struct tyObject_PlumRect__IKdcQaQvw1OnIJkV2FFBgA {
	NU32 left;
	NU32 top;
	NU32 width;
	NU32 height;
};
struct tySequence__YxVBzAqtdmlNKjBrNUumUA {
  TGenericSeq Sup;
  tyObject_ImageMetadata__RuD6Gub53ZKBcSXZouFpyQ data[SEQ_DECL_SIZE];
};
struct tySequence__6H5Oh5UUvVCLiakt9aTwtUQ {
  TGenericSeq Sup;
  NU8 data[SEQ_DECL_SIZE];
};
struct tySequence__YdLNCDKYeipzJx3I8Xw82Q {
  TGenericSeq Sup;
  NU64 data[SEQ_DECL_SIZE];
};
struct tySequence__0VINy3NBD9cXT6gXoqNtEAA {
  TGenericSeq Sup;
  tyEnum_PlumFrameDisposal__OVaNSJyQmW37of9a5cZN9aZw data[SEQ_DECL_SIZE];
};
struct tySequence__7Ywui5YuLuwDNMSznJyfIg {
  TGenericSeq Sup;
  tyObject_PlumRect__IKdcQaQvw1OnIJkV2FFBgA data[SEQ_DECL_SIZE];
};
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, copyString)(NimStringDesc* src_p0);
static N_INLINE(void, appendString)(NimStringDesc* dest_p0, NimStringDesc* src_p1);
static N_INLINE(void, copyMem__system_u1759)(void* dest_p0, void* source_p1, NI size_p2);
static N_INLINE(void, nimCopyMem)(void* dest_p0, void* source_p1, NI size_p2);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, resizeString)(NimStringDesc* dest_p0, NI addlen_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3259)(NimStringDesc** s_p0, tyEnum_PlumImageType__snk4fiNtMIEsrdL9a26obbA x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3279)(NimStringDesc** s_p0, tyEnum_PlumFlags__0yisctWXESruE8AGpMLRIg x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3296)(NimStringDesc** s_p0, NU32 x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3351)(NimStringDesc** s_p0, tyTuple__nZRsuW3vVhtr4fxcIHvHug x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3779)(NimStringDesc** s_p0, tySequence__YxVBzAqtdmlNKjBrNUumUA* x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3839)(NimStringDesc** s_p0, tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3896)(NimStringDesc** s_p0, tySequence__6H5Oh5UUvVCLiakt9aTwtUQ* x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3950)(NimStringDesc** s_p0, NU64 x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u3998)(NimStringDesc** s_p0, tySequence__YdLNCDKYeipzJx3I8Xw82Q* x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u4080)(NimStringDesc** s_p0, tySequence__0VINy3NBD9cXT6gXoqNtEAA* x_p1);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__gif50anim_u4247)(NimStringDesc** s_p0, tySequence__7Ywui5YuLuwDNMSznJyfIg* x_p1);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_2, "(", 1);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_3, ", ", 2);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_4, "imageType", 9);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_5, ": ", 2);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_6, "format", 6);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_7, "numFrames", 9);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_8, "dimensions", 10);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_9, "metadata", 8);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_10, "metaType", 8);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_11, "componentDepth", 14);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_12, "bgColor", 7);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_13, "loopCount", 9);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_14, "frameDurations", 14);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_15, "frameDisposals", 14);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_16, "frameAreas", 10);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_17, "left", 4);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_18, "top", 3);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_19, "width", 5);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_20, "height", 6);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_21, ")", 1);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_22, "imagePalettes", 13);
STRING_LITERAL(TM__US7tUPSVHwyWbwv9cB5DrpQ_23, "imageData", 9);
static N_INLINE(void, nimCopyMem)(void* dest_p0, void* source_p1, NI size_p2) {
	void* T1_;
	T1_ = (void*)0;
	T1_ = memcpy(dest_p0, source_p1, ((size_t) (size_p2)));
}
static N_INLINE(void, copyMem__system_u1759)(void* dest_p0, void* source_p1, NI size_p2) {
	nimCopyMem(dest_p0, source_p1, size_p2);
}
static N_INLINE(void, appendString)(NimStringDesc* dest_p0, NimStringDesc* src_p1) {
	{
		if (!!((src_p1 == ((NimStringDesc*) NIM_NIL)))) goto LA3_;
		copyMem__system_u1759(((void*) ((&(*dest_p0).data[(*dest_p0).Sup.len]))), ((void*) ((*src_p1).data)), ((NI) ((NI)((*src_p1).Sup.len + ((NI)1)))));
		(*dest_p0).Sup.len += (*src_p1).Sup.len;
	}
LA3_: ;
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___gif50anim_u4295)(tyObject_PlumRect__IKdcQaQvw1OnIJkV2FFBgA x_p0) {
	NimStringDesc* result;
	NI countX60gensym241_;
	result = NIM_NIL;
	result = copyString(((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_2));
	countX60gensym241_ = ((NI)0);
	{
		if (!(((NI)0) < countX60gensym241_)) goto LA3_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA3_: ;
	result = resizeString(result, 4);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_17));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym241_ += ((NI)1);
	addQuoted__gif50anim_u3296((&result), x_p0.left);
	{
		if (!(((NI)0) < countX60gensym241_)) goto LA7_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA7_: ;
	result = resizeString(result, 3);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_18));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym241_ += ((NI)1);
	addQuoted__gif50anim_u3296((&result), x_p0.top);
	{
		if (!(((NI)0) < countX60gensym241_)) goto LA11_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA11_: ;
	result = resizeString(result, 5);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_19));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym241_ += ((NI)1);
	addQuoted__gif50anim_u3296((&result), x_p0.width);
	{
		if (!(((NI)0) < countX60gensym241_)) goto LA15_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA15_: ;
	result = resizeString(result, 6);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_20));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym241_ += ((NI)1);
	addQuoted__gif50anim_u3296((&result), x_p0.height);
	result = resizeString(result, 1);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_21));
	return result;
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___gif50anim_u3810)(tyObject_ImageMetadata__RuD6Gub53ZKBcSXZouFpyQ x_p0) {
	NimStringDesc* result;
	NI countX60gensym194_;
	result = NIM_NIL;
	result = copyString(((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_2));
	countX60gensym194_ = ((NI)0);
	{
		if (!(((NI)0) < countX60gensym194_)) goto LA3_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA3_: ;
	result = resizeString(result, 8);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_10));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym194_ += ((NI)1);
	addQuoted__gif50anim_u3839((&result), x_p0.metaType);
	switch (x_p0.metaType) {
	case ((tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA)1):
	{
		{
			if (!(((NI)0) < countX60gensym194_)) goto LA8_;
			result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
		}
LA8_: ;
		result = resizeString(result, 14);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_11));
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
		countX60gensym194_ += ((NI)1);
		addQuoted__gif50anim_u3896((&result), x_p0._metaType_1.componentDepth);
	}
	break;
	case ((tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA)2):
	{
		{
			if (!(((NI)0) < countX60gensym194_)) goto LA13_;
			result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
		}
LA13_: ;
		result = resizeString(result, 7);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_12));
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
		countX60gensym194_ += ((NI)1);
		addQuoted__gif50anim_u3950((&result), x_p0._metaType_2.bgColor);
	}
	break;
	case ((tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA)3):
	{
		{
			if (!(((NI)0) < countX60gensym194_)) goto LA18_;
			result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
		}
LA18_: ;
		result = resizeString(result, 9);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_13));
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
		countX60gensym194_ += ((NI)1);
		addQuoted__gif50anim_u3296((&result), x_p0._metaType_3.loopCount);
	}
	break;
	case ((tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA)4):
	{
		{
			if (!(((NI)0) < countX60gensym194_)) goto LA23_;
			result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
		}
LA23_: ;
		result = resizeString(result, 14);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_14));
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
		countX60gensym194_ += ((NI)1);
		addQuoted__gif50anim_u3998((&result), x_p0._metaType_4.frameDurations);
	}
	break;
	case ((tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA)5):
	{
		{
			if (!(((NI)0) < countX60gensym194_)) goto LA28_;
			result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
		}
LA28_: ;
		result = resizeString(result, 14);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_15));
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
		countX60gensym194_ += ((NI)1);
		addQuoted__gif50anim_u4080((&result), x_p0._metaType_5.frameDisposals);
	}
	break;
	case ((tyEnum_PlumMetadataType__O9aZPy0kkaUyD9cCoRz5JTKA)6):
	{
		{
			if (!(((NI)0) < countX60gensym194_)) goto LA33_;
			result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
		}
LA33_: ;
		result = resizeString(result, 10);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_16));
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
		countX60gensym194_ += ((NI)1);
		addQuoted__gif50anim_u4247((&result), x_p0._metaType_6.frameAreas);
	}
	break;
	default:
	{
	}
	break;
	}
	result = resizeString(result, 1);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_21));
	return result;
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___gif50anim_u3230)(tyObject_Image__zBV2iak9cX7UnDZyTKvgWMA* x_p0) {
	NimStringDesc* result;
	NI countX60gensym123_;
	result = NIM_NIL;
	result = copyString(((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_2));
	countX60gensym123_ = ((NI)0);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA3_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA3_: ;
	result = resizeString(result, 9);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_4));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3259((&result), (*x_p0).imageType);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA7_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA7_: ;
	result = resizeString(result, 6);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_6));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3279((&result), (*x_p0).format);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA11_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA11_: ;
	result = resizeString(result, 9);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_7));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3296((&result), (*x_p0).numFrames);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA15_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA15_: ;
	result = resizeString(result, 10);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_8));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3351((&result), (*x_p0).dimensions);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA19_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA19_: ;
	result = resizeString(result, 8);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_9));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3779((&result), (*x_p0).metadata);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA23_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA23_: ;
	result = resizeString(result, 13);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_22));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3998((&result), (*x_p0).imagePalettes);
	{
		if (!(((NI)0) < countX60gensym123_)) goto LA27_;
		result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_3));
	}
LA27_: ;
	result = resizeString(result, 9);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_23));
	result = resizeString(result, 2);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_5));
	countX60gensym123_ += ((NI)1);
	addQuoted__gif50anim_u3998((&result), (*x_p0).imageData);
	result = resizeString(result, 1);
appendString(result, ((NimStringDesc*) &TM__US7tUPSVHwyWbwv9cB5DrpQ_21));
	return result;
}
