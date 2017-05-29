// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33284,y:32681,varname:node_1873,prsc:2|emission-5663-OUT;n:type:ShaderForge.SFN_TexCoord,id:8904,x:32414,y:32815,varname:node_8904,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:5663,x:33047,y:32646,varname:node_5663,prsc:2|A-1242-RGB,B-1592-RGB,T-7451-OUT;n:type:ShaderForge.SFN_Color,id:1242,x:32807,y:32366,ptovrint:False,ptlb:node_1242,ptin:_node_1242,varname:node_1242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9264706,c2:0.00681229,c3:0.00681229,c4:1;n:type:ShaderForge.SFN_Color,id:1592,x:32771,y:32592,ptovrint:False,ptlb:node_1592,ptin:_node_1592,varname:node_1592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2197232,c2:0.2246481,c3:0.9338235,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:9120,x:32771,y:32761,varname:node_9120,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8904-UVOUT;n:type:ShaderForge.SFN_Length,id:8286,x:32866,y:32943,varname:node_8286,prsc:2|IN-8647-OUT;n:type:ShaderForge.SFN_RemapRange,id:8647,x:32575,y:32893,varname:node_8647,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8904-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:7451,x:32883,y:33134,varname:node_7451,prsc:2,attp:2|A-4672-G,B-4672-R;n:type:ShaderForge.SFN_ComponentMask,id:4672,x:32647,y:33113,varname:node_4672,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8647-OUT;proporder:1242-1592;pass:END;sub:END;*/

Shader "Shader Forge/gradients" {
    Properties {
        _node_1242 ("node_1242", Color) = (0.9264706,0.00681229,0.00681229,1)
        _node_1592 ("node_1592", Color) = (0.2197232,0.2246481,0.9338235,1)
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
            uniform float4 _node_1242;
            uniform float4 _node_1592;
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
////// Lighting:
////// Emissive:
                float2 node_8647 = (i.uv0*2.0+-1.0);
                float2 node_4672 = node_8647.rg;
                float3 emissive = lerp(_node_1242.rgb,_node_1592.rgb,((atan2(node_4672.g,node_4672.r)/6.28318530718)+0.5));
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
