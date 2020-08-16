#ifndef UNLIT_PASS_INCLUDE
#define UNLIT_PASS_INCLUDE

#include "../ShaderLibrary/Common.hlsl"

// position in object space
float4 UnlitPassVertex(float3 positionOS : POSITION) : SV_POSITION
{
  float3 positionWS = TransformObjectToWorld(positionOS.xyz);
  return TransformWorldToHClip(positionWS);
}

float4 UnlitPassFragment() : SV_TARGET
{
	return 0.0;
}

#endif