// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33770,y:32580,varname:node_1873,prsc:2|diff-1559-OUT,spec-9910-OUT,normal-9864-OUT;n:type:ShaderForge.SFN_VertexColor,id:6915,x:32705,y:32837,varname:node_6915,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6244,x:33237,y:32306,ptovrint:False,ptlb:A,ptin:_A,varname:node_6244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9328,x:33046,y:32471,ptovrint:False,ptlb:B,ptin:_B,varname:node_9328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fb7986dd6d0a8e4093ba82369dd6a4d,ntxv:0,isnm:False|UVIN-6929-OUT;n:type:ShaderForge.SFN_TexCoord,id:2356,x:32595,y:32535,varname:node_2356,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6929,x:32816,y:32535,varname:node_6929,prsc:2|A-2356-UVOUT,B-1357-OUT;n:type:ShaderForge.SFN_Vector1,id:1357,x:32612,y:32715,varname:node_1357,prsc:2,v1:8;n:type:ShaderForge.SFN_Lerp,id:1559,x:33366,y:32485,varname:node_1559,prsc:2|A-6244-RGB,B-9328-RGB,T-6915-R;n:type:ShaderForge.SFN_Tex2d,id:5621,x:33204,y:32763,ptovrint:False,ptlb:A Normal,ptin:_ANormal,varname:_A_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:4984,x:33189,y:32970,ptovrint:False,ptlb:B Normal,ptin:_BNormal,varname:_B_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True|UVIN-7593-OUT;n:type:ShaderForge.SFN_TexCoord,id:5051,x:32782,y:32987,varname:node_5051,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7593,x:33003,y:32987,varname:node_7593,prsc:2|A-5051-UVOUT,B-9732-OUT;n:type:ShaderForge.SFN_Vector1,id:9732,x:32799,y:33167,varname:node_9732,prsc:2,v1:8;n:type:ShaderForge.SFN_Lerp,id:5824,x:33402,y:32862,varname:node_5824,prsc:2|A-5621-RGB,B-4984-RGB,T-6915-R;n:type:ShaderForge.SFN_Normalize,id:9864,x:33551,y:32842,varname:node_9864,prsc:2|IN-5824-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9910,x:33366,y:32608,varname:node_9910,prsc:2,a:0.4,b:1|IN-6915-R;proporder:6244-9328-5621-4984;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _A ("A", 2D) = "white" {}
        _B ("B", 2D) = "white" {}
        _ANormal ("A Normal", 2D) = "bump" {}
        _BNormal ("B Normal", 2D) = "bump" {}
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
            uniform float4 _LightColor0;
            uniform sampler2D _A; uniform float4 _A_ST;
            uniform sampler2D _B; uniform float4 _B_ST;
            uniform sampler2D _ANormal; uniform float4 _ANormal_ST;
            uniform sampler2D _BNormal; uniform float4 _BNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _ANormal_var = UnpackNormal(tex2D(_ANormal,TRANSFORM_TEX(i.uv0, _ANormal)));
                float2 node_7593 = (i.uv0*8.0);
                float3 _BNormal_var = UnpackNormal(tex2D(_BNormal,TRANSFORM_TEX(node_7593, _BNormal)));
                float3 normalLocal = normalize(lerp(_ANormal_var.rgb,_BNormal_var.rgb,i.vertexColor.r));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_9910 = lerp(0.4,1,i.vertexColor.r);
                float3 specularColor = float3(node_9910,node_9910,node_9910);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _A_var = tex2D(_A,TRANSFORM_TEX(i.uv0, _A));
                float2 node_6929 = (i.uv0*8.0);
                float4 _B_var = tex2D(_B,TRANSFORM_TEX(node_6929, _B));
                float3 diffuseColor = lerp(_A_var.rgb,_B_var.rgb,i.vertexColor.r);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _A; uniform float4 _A_ST;
            uniform sampler2D _B; uniform float4 _B_ST;
            uniform sampler2D _ANormal; uniform float4 _ANormal_ST;
            uniform sampler2D _BNormal; uniform float4 _BNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _ANormal_var = UnpackNormal(tex2D(_ANormal,TRANSFORM_TEX(i.uv0, _ANormal)));
                float2 node_7593 = (i.uv0*8.0);
                float3 _BNormal_var = UnpackNormal(tex2D(_BNormal,TRANSFORM_TEX(node_7593, _BNormal)));
                float3 normalLocal = normalize(lerp(_ANormal_var.rgb,_BNormal_var.rgb,i.vertexColor.r));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_9910 = lerp(0.4,1,i.vertexColor.r);
                float3 specularColor = float3(node_9910,node_9910,node_9910);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _A_var = tex2D(_A,TRANSFORM_TEX(i.uv0, _A));
                float2 node_6929 = (i.uv0*8.0);
                float4 _B_var = tex2D(_B,TRANSFORM_TEX(node_6929, _B));
                float3 diffuseColor = lerp(_A_var.rgb,_B_var.rgb,i.vertexColor.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
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
