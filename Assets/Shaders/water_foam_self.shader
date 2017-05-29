// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33826,y:32629,varname:node_4013,prsc:2|emission-1304-RGB,alpha-6546-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:33052,y:32631,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:4273,x:32093,y:32862,varname:node_4273,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:2995,x:32755,y:32863,varname:node_2995,prsc:2,spu:0,spv:-0.07|UVIN-8560-OUT;n:type:ShaderForge.SFN_Tex2d,id:6611,x:33005,y:32857,ptovrint:False,ptlb:node_6611,ptin:_node_6611,varname:node_6611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c52f15df43687464a9d5dd7b55f41669,ntxv:0,isnm:False|UVIN-2995-UVOUT;n:type:ShaderForge.SFN_VertexColor,id:5477,x:33066,y:33060,varname:node_5477,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9508,x:33245,y:32921,varname:node_9508,prsc:2|A-6611-R,B-5477-A;n:type:ShaderForge.SFN_Add,id:5461,x:32343,y:32938,varname:node_5461,prsc:2|A-4273-V,B-4418-OUT;n:type:ShaderForge.SFN_Append,id:8560,x:32546,y:32886,varname:node_8560,prsc:2|A-4273-U,B-5461-OUT;n:type:ShaderForge.SFN_Slider,id:4418,x:32015,y:33089,ptovrint:False,ptlb:node_4418,ptin:_node_4418,varname:node_4418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9,max:1;n:type:ShaderForge.SFN_Subtract,id:6546,x:33610,y:32990,varname:node_6546,prsc:2|A-9508-OUT,B-5643-OUT;n:type:ShaderForge.SFN_Slider,id:5643,x:33258,y:33132,ptovrint:False,ptlb:node_5643,ptin:_node_5643,varname:node_5643,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1333759,max:1;proporder:1304-6611-4418-5643;pass:END;sub:END;*/

Shader "Shader Forge/water_foam_self" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_6611 ("node_6611", 2D) = "white" {}
        _node_4418 ("node_4418", Range(0, 1)) = 0.9
        _node_5643 ("node_5643", Range(0, 1)) = 0.1333759
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _node_6611; uniform float4 _node_6611_ST;
            uniform float _node_4418;
            uniform float _node_5643;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float4 node_3461 = _Time + _TimeEditor;
                float2 node_2995 = (float2(i.uv0.r,(i.uv0.g+_node_4418))+node_3461.g*float2(0,-0.07));
                float4 _node_6611_var = tex2D(_node_6611,TRANSFORM_TEX(node_2995, _node_6611));
                fixed4 finalRGBA = fixed4(finalColor,((_node_6611_var.r*i.vertexColor.a)-_node_5643));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
