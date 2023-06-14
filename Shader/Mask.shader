Shader "Unlit/Mask"
{
    Properties
    {
        _Ref("World", Int)=1
    }
    SubShader
    {
        Tags { "RenderType"="Transparent" }
        

        Pass
        {
            ZWrite off

            Stencil{
				Ref [_Ref]
				Comp always
				Pass replace
			}
        }
    }
}