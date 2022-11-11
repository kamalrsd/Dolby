.class public Landroid/dolby/ds/DsEffect;
.super Ljava/lang/Object;
.source "DsEffect.java"


# static fields
.field protected static final DS_PARAM_ALL_VALUES:I = 0x2

.field protected static final DS_PARAM_DEFINE_PARAMS:I = 0x5

.field protected static final DS_PARAM_DEFINE_SETTINGS:I = 0x1

.field protected static final DS_PARAM_SINGLE_DEVICE_VALUE:I = 0x3

.field protected static final DS_PARAM_TUNING:I = 0x0

.field protected static final DS_PARAM_VERSION:I = 0x6

.field protected static final DS_PARAM_VISUALIZER_DATA:I = 0x4

.field protected static final DS_PARAM_VISUALIZER_ENABLE:I = 0x7

.field public static final EFFECT_DS:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_DS:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DsEffect"


# instance fields
.field protected audioEffect:Landroid/media/audiofx/AudioEffect;

.field private audioSessionId_:I

.field protected classAudioEffect:Ljava/lang/Class;

.field protected methodGetParameter:Ljava/lang/reflect/Method;

.field protected methodSetParameter:Ljava/lang/reflect/Method;

.field nxp_env_reverb_uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const-string v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_DS:Ljava/util/UUID;

    const-string v0, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "4a387fc0-8ab3-11df-8bad-0002a5d5c51b"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->nxp_env_reverb_uuid:Ljava/util/UUID;

    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v2, "android.media.audiofx.AudioEffect"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v2, "DsEffect"

    const-string v3, "Found AudioEffect Constructor"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x4

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/dolby/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/AudioEffect;

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const-string v2, "DsEffect"

    const-string v3, "Created Ds AudioEffect successfully"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const-string/jumbo v3, "setParameter"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const-string v3, "getParameter"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    const-string v2, "DsEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATED EFFECT Implementor:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connectMode:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sessionID:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/dolby/ds/DsEffect;->_setDefineParams()V

    invoke-direct {p0}, Landroid/dolby/ds/DsEffect;->_setDefineSettings()V

    iput p1, p0, Landroid/dolby/ds/DsEffect;->audioSessionId_:I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_1
    move-exception v1

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_2
    move-exception v1

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private static ByteArrayToInt([B)I
    .locals 2

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static ByteArrayToIntArray([B)[I
    .locals 6

    array-length v3, p0

    shr-int/lit8 v1, v3, 0x2

    new-array v0, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static ByteArrayToShortArray([B)[S
    .locals 6

    array-length v3, p0

    shr-int/lit8 v1, v3, 0x1

    new-array v0, v1, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static ByteArrayToString([B)Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "HEX("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static IntArrayToByteArray([I)[B
    .locals 7

    array-length v4, p0

    shl-int/lit8 v6, v4, 0x2

    new-array v0, v6, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, p0, v1

    shl-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static Set4ChInByteArray(Ljava/lang/String;[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    const-string v3, "DsEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parameter name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contains more than 4 characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong parameter name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, p2

    goto :goto_0

    :cond_1
    if-ge v2, v4, :cond_2

    const/4 v3, 0x0

    aput-byte v3, p1, v1

    :cond_2
    return v4
.end method

.method private static SetInt16InByteArray(I[BI)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method private static SetInt32InByteArray(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v1, 0x4

    return v1
.end method

.method private _getIntArrayParameter(I[I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v4, p2

    shl-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    array-length v4, p2

    shl-int/lit8 v4, v4, 0x2

    if-eq v2, v4, :cond_0

    const-string v4, "DsEffect"

    const-string v5, "_getIntArrayParameter: Error in getting the parameter!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToIntArray([B)[I

    move-result-object v3

    array-length v4, p2

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private _getShortArrayParameter(I[S)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v4, p2

    shl-int/lit8 v4, v4, 0x1

    new-array v1, v4, [B

    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    array-length v4, p2

    shl-int/lit8 v4, v4, 0x1

    if-eq v2, v4, :cond_0

    const-string v4, "DsEffect"

    const-string v5, "_getShortArrayParameter: Unexpected length"

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToShortArray([B)[S

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private _invokeGetParameter([B[B)I
    .locals 7

    const/4 v3, -0x5

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    const-string v2, "DsEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_invokeGetParameter baParam:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n baValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DsEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_invokeGetParameter returning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private _invokeSetParameter([B[B)I
    .locals 7

    const/4 v3, -0x5

    const-string v2, "DsEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_invokeSetParameter baParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n baValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    const-string v2, "DsEffect"

    const-string v3, "_invokeSetParameter returning."

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private _setDefineParams()V
    .locals 6

    const/4 v5, 0x5

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumOfParams()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    const/4 v4, 0x0

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumOfParams()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getParamsDefinitions()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->Set4ChInByteArray(Ljava/lang/String;[BI)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    return-void
.end method

.method private _setDefineSettings()V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    const/4 v4, 0x0

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getSettingsDefinitions()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    check-cast v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-byte v5, v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v2, v3

    check-cast v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    return-void
.end method

.method private intToByteArray(I)[B
    .locals 2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public getVersion()[S
    .locals 6

    const-string/jumbo v4, "ver"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    new-array v3, v2, [S

    const/4 v0, 0x0

    const/4 v4, 0x6

    invoke-direct {p0, v4, v3}, Landroid/dolby/ds/DsEffect;->_getShortArrayParameter(I[S)I

    move-result v0

    array-length v4, v3

    shl-int/lit8 v4, v4, 0x1

    if-eq v0, v4, :cond_0

    const-string v4, "DsEffect"

    const-string v5, "getVersion(): Error in getting the version"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v4, -0x1

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getVisualizerData()[S
    .locals 5

    const-string v3, "DsEffect"

    const-string v4, "getVisualizerData"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v3, "vcbg"

    invoke-static {v3}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "vcbe"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    add-int v1, v3, v4

    new-array v2, v1, [S

    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Landroid/dolby/ds/DsEffect;->_getShortArrayParameter(I[S)I

    move-result v0

    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    return-object v2
.end method

.method public getVisualizerOn()Z
    .locals 9

    const/4 v8, 0x4

    const/4 v5, 0x1

    const-string v6, "DsEffect"

    const-string v7, "getVisualizerOn"

    invoke-static {v6, v7}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x7

    invoke-direct {p0, v6}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    new-array v1, v8, [B

    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    if-eq v2, v8, :cond_0

    const-string v5, "DsEffect"

    const-string v6, "getVisualizerOn: Error in getting the visualizer on/off state!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToInt([B)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v3, v5

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    return-void
.end method

.method public setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I
    .locals 2

    const-string v0, "DsEffect"

    const-string/jumbo v1, "setAllProfileSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/dolby/ds/DsEffect;->setAllSettings(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public setAllSettings(Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/dolby/ds/AudioDevice;",
            "Landroid/dolby/ds/DsAkSettings;",
            ">;)I"
        }
    .end annotation

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x4

    mul-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x2

    new-array v1, v9, [B

    const/4 v5, 0x0

    invoke-static {v6, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/AudioDevice;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/dolby/ds/DsAkSettings;

    invoke-virtual {v2}, Landroid/dolby/ds/AudioDevice;->toInt()I

    move-result v9

    invoke-static {v9, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v7}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_0

    aget-short v9, v8, v3

    invoke-static {v9, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v9

    return v9
.end method

.method public setEnabled(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I
    .locals 11

    const/4 v10, -0x1

    array-length v7, p3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const-string v7, "DsEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSingleSetting: device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v2

    array-length v7, p3

    add-int/2addr v7, p2

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v3

    if-eq v2, v10, :cond_0

    if-ne v3, v10, :cond_2

    :cond_0
    const-string v7, "DsEffect"

    const-string v8, "Attempt to set disallowed parameter and offset combination"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x5

    :goto_1
    return v7

    :cond_1
    array-length v7, p3

    add-int/2addr v7, p2

    add-int/lit8 v6, v7, -0x1

    const-string v7, "DsEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSingleSetting: device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offset ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v7, p3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    const/4 v4, 0x0

    invoke-virtual {p4}, Landroid/dolby/ds/AudioDevice;->toInt()I

    move-result v7

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    invoke-static {v2, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    array-length v7, p3

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    const/4 v5, 0x0

    :goto_2
    array-length v7, p3

    if-ge v5, v7, :cond_3

    aget-short v7, p3, v5

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v7

    goto :goto_1
.end method

.method public setTuningSettings(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    const-string v0, "DsEffect"

    const-string/jumbo v1, "setTuningSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVisualizerOn(Z)I
    .locals 6

    const-string v4, "DsEffect"

    const-string/jumbo v5, "setVisualizerOn"

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    const/4 v4, 0x4

    new-array v1, v4, [B

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v4

    return v4

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
