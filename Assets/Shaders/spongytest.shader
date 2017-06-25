// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33906,y:32738,varname:node_2865,prsc:2|diff-8285-OUT,spec-6068-OUT,normal-8610-RGB,emission-8046-RGB,voffset-3953-OUT;n:type:ShaderForge.SFN_Color,id:8051,x:32515,y:32661,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8051,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Length,id:1218,x:32650,y:33433,varname:node_1218,prsc:2|IN-1182-OUT;n:type:ShaderForge.SFN_Multiply,id:8935,x:33158,y:33488,varname:node_8935,prsc:2|A-2341-OUT,B-6451-OUT;n:type:ShaderForge.SFN_Slider,id:6451,x:32741,y:33651,ptovrint:False,ptlb:Strength,ptin:_Strength,varname:node_6451,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4051268,max:1;n:type:ShaderForge.SFN_Vector1,id:6068,x:32892,y:32814,varname:node_6068,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:8138,x:32684,y:32416,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:node_8138,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-5303-UVOUT;n:type:ShaderForge.SFN_Vector4Property,id:5928,x:31855,y:33362,ptovrint:False,ptlb:TouchPoint,ptin:_TouchPoint,varname:node_5928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_FragmentPosition,id:8087,x:31855,y:33548,varname:node_8087,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:7290,x:32247,y:33433,varname:node_7290,prsc:2,cc1:0,cc2:2,cc3:1,cc4:-1|IN-3532-OUT;n:type:ShaderForge.SFN_Subtract,id:3532,x:32081,y:33433,varname:node_3532,prsc:2|A-5928-XYZ,B-8087-XYZ;n:type:ShaderForge.SFN_Tex2d,id:8610,x:33571,y:32482,ptovrint:False,ptlb:node_8610,ptin:_node_8610,varname:node_8610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:36fbd38d72d796b43928db41d9cdefe7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6246,x:32860,y:32634,varname:node_6246,prsc:2|A-8138-RGB,B-8051-RGB;n:type:ShaderForge.SFN_Color,id:8046,x:32791,y:32973,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_8046,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:8578,x:33559,y:33099,varname:node_8578,prsc:2|A-7958-OUT,B-355-OUT,T-4746-OUT;n:type:ShaderForge.SFN_Vector1,id:355,x:32793,y:33188,cmnt:No depression,varname:node_355,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:1182,x:32446,y:33433,varname:node_1182,prsc:2|A-7290-R,B-7290-G;n:type:ShaderForge.SFN_Subtract,id:9842,x:32261,y:33640,cmnt:Checking height of player,varname:node_9842,prsc:2|A-7290-B,B-4320-OUT;n:type:ShaderForge.SFN_Vector1,id:4320,x:32081,y:33659,varname:node_4320,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:4746,x:32734,y:33297,cmnt:Lerp according to closeness in y,varname:node_4746,prsc:2|IN-8730-OUT;n:type:ShaderForge.SFN_RemapRange,id:2341,x:32898,y:33433,varname:node_2341,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-1218-OUT;n:type:ShaderForge.SFN_If,id:8730,x:32465,y:33762,varname:node_8730,prsc:2|A-9842-OUT,B-6586-OUT,GT-9842-OUT,EQ-9842-OUT,LT-9799-OUT;n:type:ShaderForge.SFN_Vector1,id:6586,x:32261,y:33762,varname:node_6586,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9799,x:32275,y:33877,varname:node_9799,prsc:2|A-9842-OUT,B-9809-OUT;n:type:ShaderForge.SFN_Vector1,id:9809,x:32099,y:33899,varname:node_9809,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:3953,x:33652,y:32933,varname:node_3953,prsc:2|A-8285-OUT,B-8578-OUT;n:type:ShaderForge.SFN_Clamp01,id:7958,x:33335,y:33289,varname:node_7958,prsc:2|IN-8935-OUT;n:type:ShaderForge.SFN_Panner,id:5379,x:32488,y:32469,varname:node_5379,prsc:2,spu:1,spv:1|DIST-3240-OUT;n:type:ShaderForge.SFN_TexCoord,id:5303,x:32261,y:32404,varname:node_5303,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9099,x:32103,y:32552,varname:node_9099,prsc:2;n:type:ShaderForge.SFN_Divide,id:3240,x:32316,y:32552,varname:node_3240,prsc:2|A-9099-TSL,B-2062-OUT;n:type:ShaderForge.SFN_Vector1,id:2062,x:32103,y:32681,varname:node_2062,prsc:2,v1:3;n:type:ShaderForge.SFN_If,id:8285,x:33177,y:32691,varname:node_8285,prsc:2|A-6246-OUT,B-4959-OUT,GT-6246-OUT,EQ-6246-OUT,LT-4959-OUT;n:type:ShaderForge.SFN_Vector1,id:4959,x:32983,y:32738,varname:node_4959,prsc:2,v1:0.4;proporder:8051-6451-8138-5928-8046-8610;pass:END;sub:END;*/

Shader "Shader Forge/spongytest" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _Strength ("Strength", Range(0, 1)) = 0.4051268
        _MainTexture ("Main Texture", 2D) = "white" {}
        _TouchPoint ("TouchPoint", Vector) = (0.5,1,1,0)
        _Emission ("Emission", Color) = (0.5,0.5,0.5,1)
        _node_8610 ("node_8610", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Strength;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float4 _TouchPoint;
            uniform sampler2D _node_8610; uniform float4 _node_8610_ST;
            uniform float4 _Emission;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(o.uv0, _MainTexture),0.0,0));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 node_7290 = (_TouchPoint.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rbg;
                float node_9842 = (node_7290.b-1.0); // Checking height of player
                float node_8730_if_leA = step(node_9842,0.0);
                float node_8730_if_leB = step(0.0,node_9842);
                v.vertex.xyz += (node_8285*lerp(saturate(((length(float2(node_7290.r,node_7290.g))*1.0+-1.0)*_Strength)),1.0,saturate(lerp((node_8730_if_leA*(node_9842*(-1.0)))+(node_8730_if_leB*node_9842),node_9842,node_8730_if_leA*node_8730_if_leB))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _node_8610_var = tex2D(_node_8610,TRANSFORM_TEX(i.uv0, _node_8610));
                float3 normalLocal = _node_8610_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.5; // Convert roughness to gloss
                float perceptualRoughness = 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 diffuseColor = node_8285; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = _Emission.rgb;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Strength;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float4 _TouchPoint;
            uniform sampler2D _node_8610; uniform float4 _node_8610_ST;
            uniform float4 _Emission;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(o.uv0, _MainTexture),0.0,0));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 node_7290 = (_TouchPoint.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rbg;
                float node_9842 = (node_7290.b-1.0); // Checking height of player
                float node_8730_if_leA = step(node_9842,0.0);
                float node_8730_if_leB = step(0.0,node_9842);
                v.vertex.xyz += (node_8285*lerp(saturate(((length(float2(node_7290.r,node_7290.g))*1.0+-1.0)*_Strength)),1.0,saturate(lerp((node_8730_if_leA*(node_9842*(-1.0)))+(node_8730_if_leB*node_9842),node_9842,node_8730_if_leA*node_8730_if_leB))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _node_8610_var = tex2D(_node_8610,TRANSFORM_TEX(i.uv0, _node_8610));
                float3 normalLocal = _node_8610_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.5; // Convert roughness to gloss
                float perceptualRoughness = 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 diffuseColor = node_8285; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Strength;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float4 _TouchPoint;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(o.uv0, _MainTexture),0.0,0));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 node_7290 = (_TouchPoint.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rbg;
                float node_9842 = (node_7290.b-1.0); // Checking height of player
                float node_8730_if_leA = step(node_9842,0.0);
                float node_8730_if_leB = step(0.0,node_9842);
                v.vertex.xyz += (node_8285*lerp(saturate(((length(float2(node_7290.r,node_7290.g))*1.0+-1.0)*_Strength)),1.0,saturate(lerp((node_8730_if_leA*(node_9842*(-1.0)))+(node_8730_if_leB*node_9842),node_9842,node_8730_if_leA*node_8730_if_leB))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Strength;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float4 _TouchPoint;
            uniform float4 _Emission;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(o.uv0, _MainTexture),0.0,0));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 node_7290 = (_TouchPoint.rgb-mul(unity_ObjectToWorld, v.vertex).rgb).rbg;
                float node_9842 = (node_7290.b-1.0); // Checking height of player
                float node_8730_if_leA = step(node_9842,0.0);
                float node_8730_if_leB = step(0.0,node_9842);
                v.vertex.xyz += (node_8285*lerp(saturate(((length(float2(node_7290.r,node_7290.g))*1.0+-1.0)*_Strength)),1.0,saturate(lerp((node_8730_if_leA*(node_9842*(-1.0)))+(node_8730_if_leB*node_9842),node_9842,node_8730_if_leA*node_8730_if_leB))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = _Emission.rgb;
                
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 node_6246 = (_MainTexture_var.rgb*_Color.rgb);
                float node_4959 = 0.4;
                float node_8285_if_leA = step(node_6246,node_4959);
                float node_8285_if_leB = step(node_4959,node_6246);
                float3 node_8285 = lerp((node_8285_if_leA*node_4959)+(node_8285_if_leB*node_6246),node_6246,node_8285_if_leA*node_8285_if_leB);
                float3 diffColor = node_8285;
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                o.Albedo = diffColor + specColor * 0.125; // No gloss connected. Assume it's 0.5
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
