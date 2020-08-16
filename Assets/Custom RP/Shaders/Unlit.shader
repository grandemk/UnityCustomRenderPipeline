Shader "Custom RP/Unlit"
{
	Properties
	{
	}
	SubShader
	{
		Pass
	    {
		    HLSLPROGRAM
			// To draw a mesh the GPU has to rasterize all its triangles, converting it to pixel data.
		    // It does this by transforming the vertex coordinates from 3D space to 2D visualization space and then filling all pixels that are covered by the resulting triangle.
		    // A fragment corresponds to a display pixel or texture texel.
            #pragma vertex UnlitPassVertex
            #pragma fragment UnlitPassFragment
            #include "UnlitPass.hlsl"
			ENDHLSL
	    }
	}
}