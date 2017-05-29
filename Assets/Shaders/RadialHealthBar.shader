// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-883-OUT,clip-754-OUT;n:type:ShaderForge.SFN_TexCoord,id:9879,x:31752,y:33119,varname:node_9879,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:883,x:32652,y:32790,varname:node_883,prsc:2|A-225-RGB,B-9712-RGB,T-4148-OUT;n:type:ShaderForge.SFN_Color,id:9712,x:32437,y:32693,ptovrint:False,ptlb:node_9712,ptin:_node_9712,varname:node_9712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4482759,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:225,x:32475,y:32484,ptovrint:False,ptlb:node_225,ptin:_node_225,varname:node_225,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:4148,x:32269,y:32880,ptovrint:False,ptlb:Health,ptin:_Health,varname:node_4148,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4526409,max:1;n:type:ShaderForge.SFN_RemapRange,id:8058,x:31957,y:33134,varname:node_8058,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9879-UVOUT;n:type:ShaderForge.SFN_Length,id:2145,x:32216,y:33380,varname:node_2145,prsc:2|IN-8058-OUT;n:type:ShaderForge.SFN_Floor,id:2025,x:32542,y:33446,varname:node_2025,prsc:2|IN-2145-OUT;n:type:ShaderForge.SFN_OneMinus,id:4128,x:32742,y:33446,varname:node_4128,prsc:2|IN-2025-OUT;n:type:ShaderForge.SFN_Add,id:6292,x:32386,y:33276,varname:node_6292,prsc:2|A-9829-OUT,B-2145-OUT;n:type:ShaderForge.SFN_Vector1,id:9829,x:32216,y:33229,varname:node_9829,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Floor,id:2602,x:32686,y:33266,varname:node_2602,prsc:2|IN-6292-OUT;n:type:ShaderForge.SFN_Multiply,id:754,x:32989,y:33342,varname:node_754,prsc:2|A-5515-OUT,B-2602-OUT,C-4128-OUT;n:type:ShaderForge.SFN_ArcTan2,id:6736,x:32269,y:32980,varname:node_6736,prsc:2,attp:2|A-6966-G,B-6966-R;n:type:ShaderForge.SFN_ComponentMask,id:6966,x:32097,y:32980,varname:node_6966,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8058-OUT;n:type:ShaderForge.SFN_Ceil,id:3113,x:32702,y:33082,varname:node_3113,prsc:2|IN-2402-OUT;n:type:ShaderForge.SFN_OneMinus,id:5515,x:32902,y:33154,varname:node_5515,prsc:2|IN-3113-OUT;n:type:ShaderForge.SFN_Subtract,id:2402,x:32541,y:33069,varname:node_2402,prsc:2|A-2189-OUT,B-4148-OUT;n:type:ShaderForge.SFN_OneMinus,id:2189,x:32386,y:33134,varname:node_2189,prsc:2|IN-6736-OUT;proporder:9712-225-4148;pass:END;sub:END;*/

Shader "Shader Forge/gradients2" {
    Properties {
        _node_9712 ("node_9712", Color) = (0.4482759,1,0,1)
        _node_225 ("node_225", Color) = (1,0,0,1)
        _Health ("Health", Range(0, 1)) = 0.4526409
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _node_9712;
            uniform float4 _node_225;
            uniform float _Health;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 node_8058 = (i.uv0*2.0+-1.0);
                float2 node_6966 = node_8058.rg;
                float node_6736 = ((atan2(node_6966.g,node_6966.r)/6.28318530718)+0.5);
                float node_2145 = length(node_8058);
                float node_2602 = floor((0.3+node_2145));
                float node_754 = ((1.0 - ceil(((1.0 - node_6736)-_Health)))*node_2602*(1.0 - floor(node_2145)));
                clip(node_754 - 0.5);
////// Lighting:
////// Emissive:
                float3 node_883 = lerp(_node_225.rgb,_node_9712.rgb,_Health);
                float3 emissive = node_883;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Health;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 node_8058 = (i.uv0*2.0+-1.0);
                float2 node_6966 = node_8058.rg;
                float node_6736 = ((atan2(node_6966.g,node_6966.r)/6.28318530718)+0.5);
                float node_2145 = length(node_8058);
                float node_2602 = floor((0.3+node_2145));
                float node_754 = ((1.0 - ceil(((1.0 - node_6736)-_Health)))*node_2602*(1.0 - floor(node_2145)));
                clip(node_754 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
