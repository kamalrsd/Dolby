.class public Landroid/dolby/ds/DsConfigParser;
.super Ljava/lang/Object;
.source "DsConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/ds/DsConfigParser$1;,
        Landroid/dolby/ds/DsConfigParser$DeviceSettings;,
        Landroid/dolby/ds/DsConfigParser$EqualizerSettings;,
        Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    }
.end annotation


# static fields
.field private static final ASCII_TAB_COMMA:I = 0x2c

.field private static final ASCII_TAB_CR:I = 0xd

.field private static final ASCII_TAB_EQUAL:I = 0x3d

.field private static final ASCII_TAB_LEFT_BRACKET:I = 0x5b

.field private static final ASCII_TAB_LF:I = 0xa

.field private static final ASCII_TAB_RIGHT_BRACKET:I = 0x5d

.field private static final ASCII_TAB_SPACE:I = 0x20

.field private static final ERROR_INVALID_PARAM_LEN:I = 0x40

.field private static final ERROR_INVALID_PARAM_NAME:I = 0x10

.field private static final ERROR_INVALID_PARAM_VALUE:I = 0x20

.field private static final ERROR_MISSING_IEQ:I = 0x2

.field private static final ERROR_MISSING_OFF:I = 0x4

.field private static final ERROR_MISSING_PARAM:I = 0x8

.field private static final ERROR_MISSING_PROFILE:I = 0x1

.field private static final ERROR_REDUNDANT_IEQ:I = 0x2000

.field private static final ERROR_REDUNDANT_OFF:I = 0x4000

.field private static final ERROR_REDUNDANT_PROFILE:I = 0x1000

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DsConfigParser"

.field private static final TUNING_MAX_OFFSET:I = 0x149

.field private static ieqDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static profileDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akParamsFound_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mapDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$DeviceSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapEqualizer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$EqualizerSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapProfile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$ProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field parameterDev:Ljava/lang/String;

.field parameterId:Ljava/lang/String;

.field parameterName:Ljava/lang/String;

.field parameterPreset:Ljava/lang/String;

.field parameterType:Ljava/lang/String;

.field parameterValue:Ljava/lang/String;

.field parserErrorFlag:I

.field tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    iput v12, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-interface {v9, p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    const/4 v6, 0x0

    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_7

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_1
    if-eqz v7, :cond_0

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    :cond_1
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    if-eqz v10, :cond_0

    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->parseParameters()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v10, "DsConfigParser"

    const-string/jumbo v11, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid ds settings"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    const-string v10, "DsConfigParser"

    const-string/jumbo v11, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid ds settings"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_2
    const/4 v7, 0x1

    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v11, "preset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v11, "profile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v11, "tuning"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "constant"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_6

    invoke-interface {v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iput-object v8, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    :cond_3
    const-string/jumbo v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v8, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    :cond_4
    const-string v10, "dev"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iput-object v8, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "include"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->parseParameters()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p2}, Landroid/dolby/ds/DsConfigParser;->checkConfigValidity(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkConfigValidity(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x3

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v2, :cond_1

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_3

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    sget-object v4, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_7

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :cond_4
    :goto_2
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_5

    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :cond_5
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v1, :cond_6

    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :cond_6
    return-void

    :cond_7
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_2
.end method

.method private convertStringArray(Ljava/lang/String;)[I
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x20

    const/4 v6, 0x1

    const/4 v2, 0x1

    const/16 v8, 0x149

    new-array v7, v8, [I

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v6, v2

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sub-int v8, v2, v5

    :try_start_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_1

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    iget v8, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    const/4 v4, 0x0

    :goto_4
    return-object v4

    :cond_4
    move v6, v2

    goto :goto_1

    :cond_5
    new-array v4, v1, [I

    invoke-static {v7, v11, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method private equalizerSettingArray([Ljava/lang/String;I)[[I
    .locals 17

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move/from16 v0, p2

    new-array v4, v0, [I

    new-instance v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    const/4 v7, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ge v7, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    aget-object v15, p1, v7

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    if-nez v3, :cond_1

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v12, v5

    :cond_4
    :goto_2
    if-ge v5, v2, :cond_0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_6

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_5

    add-int/lit8 v11, v11, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    sub-int v14, v5, v11

    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v14, "iebt"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "gebg"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected parameter name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for equalizer settings"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :goto_4
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    move v12, v5

    :goto_5
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    if-eqz v8, :cond_b

    invoke-virtual {v10, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/dolby/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_f

    array-length v14, v1

    invoke-static {v9, v14}, Landroid/dolby/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    :cond_a
    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    if-eq v5, v2, :cond_4

    :cond_c
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_d

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_d

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_e

    :cond_d
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_c

    :cond_e
    move v12, v5

    goto/16 :goto_2

    :cond_f
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The values for AK parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " are invalid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v14, v14, [[I

    invoke-virtual {v6, v14}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    return-object v14
.end method

.method private getProfileSettingArray(Ljava/lang/String;)[[I
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v2}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    if-nez v0, :cond_0

    check-cast v2, [[I

    :goto_0
    return-object v2

    :cond_0
    const-string v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile settingStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/dolby/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    if-nez v1, :cond_1

    check-cast v2, [[I

    goto :goto_0

    :cond_1
    const-string v2, "DsConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profile setting list size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    goto :goto_0
.end method

.method private getTuningSettingArray()[[I
    .locals 8

    const/4 v4, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string/jumbo v6, "tuning"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string v6, "constant"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    move-object v3, v4

    :goto_0
    if-nez v3, :cond_3

    check-cast v4, [[I

    :goto_1
    return-object v4

    :cond_0
    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v3, v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    :goto_2
    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v5, "DsConfigParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tuning settingStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/dolby/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_4

    check-cast v4, [[I

    goto :goto_1

    :cond_4
    const-string v4, "DsConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device setting list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    goto :goto_1
.end method

.method private parseParameters()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    invoke-direct {v2, p0, v4}, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string/jumbo v5, "preset"

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ieq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "geq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->device:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v1, p0, v4}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    const-string/jumbo v5, "profile"

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "off"

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->device:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    new-instance v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    invoke-direct {v0, p0, v4}, Landroid/dolby/ds/DsConfigParser$DeviceSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    const-string/jumbo v4, "tuning"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "constant"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_6
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->device:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v10, 0x0

    :cond_0
    return-object v10

    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v12, v3

    :cond_4
    :goto_1
    if-ge v3, v2, :cond_0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_5

    add-int/lit8 v11, v11, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    sub-int v14, v3, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v14, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v7}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected AK parameter name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_3

    :cond_8
    move v12, v3

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    if-eqz v5, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/dolby/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "genb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "aonb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "ienb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "gebf"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_a
    invoke-static {v7, v1}, Landroid/dolby/ds/DsAkSettings;->setConstantAkParam(Ljava/lang/String;[I)V

    :cond_b
    :goto_5
    const/4 v4, 0x0

    :goto_6
    array-length v14, v1

    if-ge v4, v14, :cond_e

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    aget v16, v1, v4

    aput v16, v14, v15

    invoke-virtual {v10, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    array-length v14, v1

    invoke-static {v7, v14}, Landroid/dolby/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_5

    :cond_d
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The values for AK parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " are invalid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eq v3, v2, :cond_4

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_11

    :cond_10
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_f

    :cond_11
    move v12, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public getGeqSettingArray(Ljava/lang/String;)[[I
    .locals 3

    const-string v1, "gebg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    sget-object v1, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0}, Landroid/dolby/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getIeqSettingArray()[[I
    .locals 2

    const-string v1, "iebt"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/dolby/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getParserStatusFlag()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "DsConfigParser"

    const-string v2, "The parsing result of the configuration file shows below:"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    if-nez v1, :cond_2

    const-string v1, "DsConfigParser"

    const-string v2, "No errors were found when parsing configuration file."

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "DsConfigParser"

    const-string v2, "Parsing has failed, DS will be disabled! Please correct the errors in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_3

    const-string v1, "DsConfigParser"

    const-string v2, "More profiles were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    const-string v1, "DsConfigParser"

    const-string v2, "More IEQ presets were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    const-string v1, "DsConfigParser"

    const-string v2, "Off profile was specified in configuration file but is not expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const-string v1, "DsConfigParser"

    const-string v2, "Not all expected profiles were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_6
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const-string v1, "DsConfigParser"

    const-string v2, "Not all expected IEQ presets were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_7
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const-string v1, "DsConfigParser"

    const-string v2, "Off profile was expected but NOT specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_8
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    const-string v1, "DsConfigParser"

    const-string v2, "Some AK parameters were missing in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_9
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    const-string v1, "DsConfigParser"

    const-string v2, "Parameter name parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_a
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    const-string v1, "DsConfigParser"

    const-string v2, "Parameter value parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_b
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const-string v1, "DsConfigParser"

    const-string v2, "The length of data specified for the AK parameter is inconsistent with the related AK parameter that determines the expected length."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getProfileSettingIeq(Ljava/lang/String;)I
    .locals 6

    const/4 v2, -0x1

    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ieqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v1}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DsConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSavedParams()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "gebg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSettingArray(Ljava/lang/String;Z)[[I
    .locals 13

    sget-object v10, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    array-length v10, v5

    if-ge v0, v10, :cond_0

    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    aget-object v10, v5, v0

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->getTuningSettingArray()[[I

    move-result-object v8

    invoke-direct {p0, p1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingArray(Ljava/lang/String;)[[I

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-nez v8, :cond_2

    const/4 v9, 0x0

    :goto_2
    add-int v7, v4, v9

    if-nez v7, :cond_3

    const/4 v10, 0x0

    check-cast v10, [[I

    :goto_3
    return-object v10

    :cond_1
    array-length v4, v3

    goto :goto_1

    :cond_2
    array-length v9, v8

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "lcmf"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "iebt"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AK parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " missing in xml file!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_4

    :cond_5
    new-array v6, v7, [[I

    if-eqz v4, :cond_6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v6, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    if-eqz v9, :cond_7

    const/4 v10, 0x0

    invoke-static {v8, v10, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    const-string v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "total setting list size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v6

    goto/16 :goto_3
.end method
