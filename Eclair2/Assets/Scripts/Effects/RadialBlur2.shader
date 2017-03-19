Shader "Custom/RadialBlur2"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_OriginX ("OriginX", Float) = 0.5
		_OriginY ("OriginY", Float) = 0.5
		_Force ("Force", Float) = 1
		_Brightness ("Brightness" , Float) = 1
	}
	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = v.uv;
				return o;
			}
			
			sampler2D _MainTex;
			float _OriginX;
			float _OriginY;
			float _Force;
			float _Brightness;

			fixed4 frag (v2f i) : SV_Target
			{
				float2 origin = float2(_OriginX,_OriginY);
				float2 dif = origin - i.uv;
				
				fixed4 col = tex2D(_MainTex, i.uv);
				for(int ii = 1;ii < 5;ii++){
					col += tex2D(_MainTex, i.uv + dif * ii * _Force / float(20)) / float(5 / ii);
				}
				col *= _Brightness / 4;
				// just invert the colors
				//col = 1 - col;
				return col;
			}
			ENDCG
		}
	}
}
