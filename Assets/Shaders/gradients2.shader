// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-883-OUT,voffset-4813-OUT;n:type:ShaderForge.SFN_TexCoord,id:9879,x:31743,y:32904,varname:node_9879,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:3925,x:32137,y:32933,varname:node_3925,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2163-X;n:type:ShaderForge.SFN_Lerp,id:883,x:32941,y:32861,varname:node_883,prsc:2|A-225-RGB,B-9712-RGB,T-5351-OUT;n:type:ShaderForge.SFN_Color,id:9712,x:32697,y:32834,ptovrint:False,ptlb:node_9712,ptin:_node_9712,varname:node_9712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.779042,c2:0.9852941,c3:0.05071366,c4:1;n:type:ShaderForge.SFN_Color,id:225,x:32711,y:32617,ptovrint:False,ptlb:node_225,ptin:_node_225,varname:node_225,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5351,x:32760,y:32998,varname:node_5351,prsc:2|IN-5286-OUT;n:type:ShaderForge.SFN_Sin,id:2300,x:32682,y:33224,varname:node_2300,prsc:2|IN-9540-OUT;n:type:ShaderForge.SFN_Multiply,id:9540,x:32520,y:33170,varname:node_9540,prsc:2|A-3446-OUT,B-7552-OUT,C-8451-OUT;n:type:ShaderForge.SFN_Vector1,id:3446,x:32371,y:32854,varname:node_3446,prsc:2,v1:2;n:type:ShaderForge.SFN_RemapRange,id:5286,x:32866,y:33224,varname:node_5286,prsc:2,frmn:-1,frmx:1,tomn:-1,tomx:1|IN-2300-OUT;n:type:ShaderForge.SFN_Tau,id:8451,x:32315,y:33308,varname:node_8451,prsc:2;n:type:ShaderForge.SFN_Time,id:4242,x:32121,y:33164,varname:node_4242,prsc:2;n:type:ShaderForge.SFN_Add,id:7552,x:32315,y:33061,varname:node_7552,prsc:2|A-3925-OUT,B-4242-TSL;n:type:ShaderForge.SFN_NormalVector,id:8997,x:32809,y:33422,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4813,x:33034,y:33432,varname:node_4813,prsc:2|A-8997-OUT,B-3954-OUT,C-5351-OUT;n:type:ShaderForge.SFN_Vector1,id:3954,x:32809,y:33586,varname:node_3954,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Exp,id:8932,x:32307,y:32642,varname:node_8932,prsc:2,et:0;n:type:ShaderForge.SFN_FragmentPosition,id:2163,x:31932,y:32807,varname:node_2163,prsc:2;proporder:9712-225;pass:END;sub:END;*/

Shader "Shader Forge/gradients2" {
    Properties {
        _node_9712 ("node_9712", Color) = (0.779042,0.9852941,0.05071366,1)
        _node_225 ("node_225", Color) = (1,0,0,1)
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _node_9712;
            uniform float4 _node_225;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4242 = _Time + _TimeEditor;
                float node_5351 = saturate((sin((2.0*(mul(unity_ObjectToWorld, v.vertex).r.r+node_4242.r)*6.28318530718))*1.0+0.0));
                v.vertex.xyz += (v.normal*0.3*node_5351);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_4242 = _Time + _TimeEditor;
                float node_5351 = saturate((sin((2.0*(i.posWorld.r.r+node_4242.r)*6.28318530718))*1.0+0.0));
                float3 emissive = lerp(_node_225.rgb,_node_9712.rgb,node_5351);
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
            uniform float4 _TimeEditor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4242 = _Time + _TimeEditor;
                float node_5351 = saturate((sin((2.0*(mul(unity_ObjectToWorld, v.vertex).r.r+node_4242.r)*6.28318530718))*1.0+0.0));
                v.vertex.xyz += (v.normal*0.3*node_5351);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
