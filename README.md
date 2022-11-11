# How to Port Dolby on Android Kitkat
1. Decompile framework.jar
2. push all .smali file inside framework, recompile
3. put recompiled framework.jar to System/framework on flashable file. and patched service.jar or u can disable signature with lucky patcher
4. Archieve dolby_flashable to zip
5. flash via recovery
