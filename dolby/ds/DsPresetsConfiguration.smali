.class public Landroid/dolby/ds/DsPresetsConfiguration;
.super Ljava/lang/Object;
.source "DsPresetsConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsPresetsConfiguration"

.field private static currentProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/dolby/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/dolby/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static ieqSettingsAdded:Z

.field private static offProfile_:Landroid/dolby/ds/DsProfileSettings;

.field private static xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

.field private static xmlParserDefault:Landroid/dolby/ds/DsConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIeqSettings()V
    .locals 8

    sget-object v7, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v7}, Landroid/dolby/ds/DsConfigParser;->getIeqSettingArray()[[I

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_1

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    move v3, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    add-int/lit8 v2, v3, 0x1

    invoke-static {v3, v6}, Landroid/dolby/ds/DsProfileSettings;->setIeqBandTargets(I[I)V

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    return-void
.end method

.method private static addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v21

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v19

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v21, :cond_5

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    sget-boolean v2, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->addIeqSettings()V

    const/4 v2, 0x1

    sput-boolean v2, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    :cond_0
    sget-object v2, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v3, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    new-instance v2, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v20, :cond_1

    move-object/from16 v3, v20

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The preset loaded for"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, -0x1

    move/from16 v0, v19

    if-eq v0, v7, :cond_2

    move/from16 v8, v19

    :goto_1
    const/4 v9, 0x0

    check-cast v9, [[I

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v17

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v2}, Landroid/dolby/ds/DsConfigParser;->getSavedParams()Ljava/util/HashSet;

    move-result-object v14

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v15

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getGeqSettingArray(Ljava/lang/String;)[[I

    move-result-object v13

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->combineSettings([[I[[I)[[I

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    invoke-static {v0, v15}, Landroid/dolby/ds/DsPresetsConfiguration;->resolveIeqPreset(II)I

    move-result v19

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v3, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    new-instance v6, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v20, :cond_3

    move-object/from16 v7, v20

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current settings loaded for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_4

    move/from16 v12, v19

    :goto_3
    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v14}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_1
    move-object/from16 v3, p0

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v7, p0

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    :catch_0
    move-exception v18

    :goto_4
    const-string v2, "DsPresetsConfiguration"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exception in creating profile settings"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Settings are NOT ready yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v18

    move-object v5, v9

    goto :goto_4
.end method

.method private static addOffProfileSettings()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string/jumbo v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v12

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v10

    if-eqz v12, :cond_2

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v1, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v1, v12}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v11, :cond_1

    move-object v1, v11

    :goto_0
    const-string v2, "The setting used for switching off Ds effect."

    const/4 v4, 0x0

    sget-object v5, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    const/4 v7, -0x1

    if-eq v10, v7, :cond_0

    move v6, v10

    :cond_0
    const/4 v7, 0x0

    check-cast v7, [[I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->offProfile_:Landroid/dolby/ds/DsProfileSettings;

    return-void

    :cond_1
    const-string/jumbo v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v0, "DsPresetsConfiguration"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Exception in creating off profile settings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "DsPresetsConfiguration"

    const-string v1, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Settings are NOT ready yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static combineSettings([[I[[I)[[I
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move v1, v4

    :goto_0
    if-nez p1, :cond_1

    move v0, v4

    :goto_1
    add-int v3, v1, v0

    if-nez v3, :cond_2

    const/4 v4, 0x0

    check-cast v4, [[I

    :goto_2
    return-object v4

    :cond_0
    array-length v1, p0

    goto :goto_0

    :cond_1
    array-length v0, p1

    goto :goto_1

    :cond_2
    new-array v2, v3, [[I

    if-eqz v1, :cond_3

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v4, v2

    goto :goto_2
.end method

.method static createProfileSettings(Z)Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    sget-object v3, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    sget-object v3, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->GAME:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->VOICE:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->addOffProfileSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "DsPresetsConfiguration"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    goto :goto_0
.end method

.method public static getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;
    .locals 2

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    sget-object v1, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/dolby/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getDefaultSettings()[Landroid/dolby/ds/DsProfileSettings;
    .locals 2

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    sget-object v1, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/dolby/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getOffProfileSettings()Landroid/dolby/ds/DsProfileSettings;
    .locals 1

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->offProfile_:Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getParserStatusFlag()Z
    .locals 1

    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v0}, Landroid/dolby/ds/DsConfigParser;->getParserStatusFlag()Z

    move-result v0

    return v0
.end method

.method private static resolveIeqPreset(II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method private static resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;Z)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/dolby/ds/DsConfigParser;

    invoke-direct {v2, p0, p2}, Landroid/dolby/ds/DsConfigParser;-><init>(Ljava/io/InputStream;Z)V

    sput-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v2, Landroid/dolby/ds/DsConfigParser;

    invoke-direct {v2, p1, p2}, Landroid/dolby/ds/DsConfigParser;-><init>(Ljava/io/InputStream;Z)V

    sput-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string v2, "DsPresetsConfiguration"

    const-string v3, "The current settings are invalid. The default settings will be used."

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "DsPresetsConfiguration"

    const-string v3, "Error in parsing the default settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1
.end method
