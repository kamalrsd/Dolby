.class public Landroid/dolby/ds/Ds;
.super Ljava/lang/Object;
.source "Ds.java"


# static fields
.field public static final DS_CURRENT_FILENAME:Ljava/lang/String; = "ds1-current.xml"

.field public static final DS_STATE_FILENAME:Ljava/lang/String; = "ds1-state.xml"

.field private static final DS_VERSION_EXTERNAL:Ljava/lang/String; = "DS version 1.2.0.0"

.field private static final DS_VERSION_INTERNAL:Ljava/lang/String; = "DS version 1.2.0.0 [Build 7]"

.field private static final GLOBAL_AUDIO_SESSION_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Ds"

.field private static final useOffProfileForDsOff:Z


# instance fields
.field private currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

.field private defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

.field private dsEffect_:Landroid/dolby/ds/DsEffect;

.field private isDsOn_:Z

.field private offProfile_:Landroid/dolby/ds/DsProfileSettings;

.field private selectedProfile_:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Landroid/dolby/ds/DsProfileSettings;

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    new-array v0, v1, [Landroid/dolby/ds/DsProfileSettings;

    iput-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iput v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const-string v0, "Ds"

    const-string v1, "DS version 1.2.0.0 [Build 7]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getDefaultSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/dolby/ds/DsEffect;

    invoke-direct {v0, v2}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-direct {p0, v2}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Constant AK parameters NOT defined yet."

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static populateSettings(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string v5, "Ds"

    const-string/jumbo v6, "populateSettings"

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ds1-current.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ds1-state.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/ds/DsStoreUtil;->storeDsPath(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, p0, v5}, Landroid/dolby/ds/DsPresetsConfiguration;->xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;Z)Z

    move-result v4

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v4, :cond_0

    invoke-static {v8}, Landroid/dolby/ds/DsPresetsConfiguration;->createProfileSettings(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getParserStatusFlag()Z

    move-result v4

    :cond_0
    return v4

    :catch_0
    move-exception v3

    const-string v5, "Ds"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find DS config XML file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "Ds"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "populateSettings(): Exception loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or parsing the file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private recreateDsEffect()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v2}, Landroid/dolby/ds/DsEffect;->release()V

    :cond_0
    new-instance v2, Landroid/dolby/ds/DsEffect;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Ds"

    const-string v3, "Exception in recreateDsEffect."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setInitStatus(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Landroid/dolby/ds/DsStoreUtil;->loadDsState()[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v2

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    :cond_1
    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore Ds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    iget v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-virtual {p0, v2}, Landroid/dolby/ds/Ds;->setSelectedProfile(I)Z

    iget-boolean v2, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    invoke-virtual {p0, v2}, Landroid/dolby/ds/Ds;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Ds"

    const-string v3, "Exception in setInitStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDsApParam(Ljava/lang/String;)[I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/dolby/ds/DsProfileSettings;->getDsApParam(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Ds"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDsApParamLength(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/DeadObjectException;

    invoke-direct {v3}, Landroid/os/DeadObjectException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v3}, Landroid/dolby/ds/DsEffect;->getVersion()[S

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APPv1 version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    aget-short v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-short v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDsOn()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const-string v1, "Ds"

    const-string v2, "getDsOn"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "DS version 1.2.0.0"

    return-object v0
.end method

.method public getGeq(II)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeq: \"profile name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " preset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/dolby/ds/DsProfileSettings;->getGeq(I)[F

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Ds"

    const-string v2, "getGeq: Invalid preset input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const-string v1, "Ds"

    const-string v2, "getGeq: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getIeqPreset(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v0

    return v0

    :cond_0
    const-string v1, "Ds"

    const-string v2, "getIeqPrest: Invalid profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getProfileCount()I
    .locals 2

    const-string v0, "Ds"

    const-string v1, "getProfileCount"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    return v0
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Ds"

    const-string v3, "getProfileNames"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileSettings: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->extractClientSettings()Landroid/dolby/DsClientSettings;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Ds"

    const-string v1, "getProfileSettings: Invalid profile input"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getSelectedProfile()I
    .locals 2

    const-string v0, "Ds"

    const-string v1, "getSelectedProfile"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    return v0
.end method

.method public getVisualizerData([F[F)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/os/DeadObjectException;

    invoke-direct {v7}, Landroid/os/DeadObjectException;-><init>()V

    throw v7

    :cond_0
    iget-object v7, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v7}, Landroid/dolby/ds/DsEffect;->getVisualizerData()[S

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    const/high16 v5, 0x4180

    const-string/jumbo v7, "vcbg"

    invoke-static {v7}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    array-length v7, p1

    if-ge v7, v2, :cond_2

    array-length v4, p1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    aget-short v7, v6, v0

    int-to-float v7, v7

    div-float/2addr v7, v5

    aput v7, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    array-length v7, p2

    if-ge v7, v2, :cond_4

    array-length v3, p2

    :goto_3
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_5

    add-int v1, v0, v2

    aget-short v7, v6, v1

    int-to-float v7, v7

    div-float/2addr v7, v5

    aput v7, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    add-int v7, v4, v3

    goto :goto_0
.end method

.method public getVisualizerOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0}, Landroid/dolby/ds/DsEffect;->getVisualizerOn()Z

    move-result v0

    return v0
.end method

.method public isBasicProfileSettings(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProfileModified(I)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    return v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v15

    sget-object v16, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v15

    sget-object v16, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getParamsSaved()[Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3

    const/4 v8, 0x0

    :goto_1
    array-length v15, v14

    if-ge v8, v15, :cond_3

    aget-object v12, v14, v8

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v13

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_2

    invoke-virtual {v1, v12, v11}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v15

    invoke-virtual {v2, v12, v11}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v9

    if-eq v9, v10, :cond_4

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v6

    const-string v15, "gebf"

    invoke-static {v15}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x0

    :goto_3
    const/4 v15, 0x4

    if-ge v8, v15, :cond_7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v5, :cond_6

    aget-object v15, v6, v8

    aget-short v15, v15, v11

    aget-object v16, v7, v8

    aget-short v16, v16, v11

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public resetProfile(I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    const/4 v11, 0x0

    const-string v0, "Ds"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resetProfile: \""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    sget-object v7, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/dolby/ds/DsAkSettings;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v7, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v7, v9}, Landroid/dolby/ds/DsAkSettings;-><init>(Landroid/dolby/ds/DsAkSettings;)V

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->isCustom()Z

    move-result v4

    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getCategory()Landroid/dolby/ds/DsProfileSettings$Category;

    move-result-object v5

    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v6

    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    new-instance v0, Landroid/dolby/ds/DsProfileSettings;

    const/4 v7, 0x0

    check-cast v7, [[I

    invoke-direct/range {v0 .. v8}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    aput-object v0, v12, p1

    iget v0, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v7, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v11, 0x1

    return v11

    :catch_0
    move-exception v10

    const-string v0, "Ds"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_2
    const-string v0, "Ds"

    const-string/jumbo v7, "resetProfile: Invalid profile input"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public restoreCurrentProfiles()V
    .locals 4

    const-string v0, "Ds"

    const-string v1, "Ds resetCurrentProfiles"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current profile settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V

    return-void
.end method

.method public saveDsStateAndSettings()V
    .locals 2

    iget-boolean v0, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iget v1, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/ds/DsStoreUtil;->saveDsState(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    invoke-static {v0}, Landroid/dolby/ds/DsStoreUtil;->saveDsProfileSettings([Landroid/dolby/ds/DsProfileSettings;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setDsApParam(Ljava/lang/String;[I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Landroid/os/DeadObjectException;

    invoke-direct {v8}, Landroid/os/DeadObjectException;-><init>()V

    throw v8

    :cond_0
    const-string v8, "iebt"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Ds"

    const-string v9, "iebt is NOT allowed to be set"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const-string v8, "gebg"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Ds"

    const-string v9, "gebg is NOT allowed to be set by setDsApParam, please use setGeq instead"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    array-length v8, p2

    new-array v7, v8, [S

    const/4 v2, 0x0

    :goto_0
    array-length v8, p2

    if-ge v2, v8, :cond_3

    aget v8, p2, v2

    int-to-short v8, v8

    aput-short v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1, v7}, Landroid/dolby/ds/DsProfileSettings;->setDsApParam(Ljava/lang/String;[S)V

    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v9, 0x0

    sget-object v10, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v8, v4, v9, v7, v10}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/dolby/ds/Ds;->isBasicProfileSettings(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v5, 0x0

    iget-object v8, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v8

    sget-object v9, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    const/4 v2, 0x0

    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_5

    aget-short v8, v7, v2

    invoke-virtual {v0, p1, v2}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v9

    if-eq v8, v9, :cond_7

    const/4 v5, 0x1

    :cond_5
    if-eqz v5, :cond_8

    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/dolby/ds/DsProfileSettings;->addParamSaved(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/dolby/ds/DsProfileSettings;->removeParamSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v8, "Ds"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public setDsOn(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    iput-boolean p1, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ds on/off setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    return-void
.end method

.method public setGeq(II[F)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/os/DeadObjectException;

    invoke-direct {v4}, Landroid/os/DeadObjectException;-><init>()V

    throw v4

    :cond_0
    const/4 v2, 0x0

    const-string v4, "Ds"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGeq: \"profile name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_4

    const/4 v4, 0x6

    if-ge p1, v4, :cond_4

    if-ltz p2, :cond_3

    const/4 v4, 0x4

    if-ge p2, v4, :cond_3

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4, p2, p3}, Landroid/dolby/ds/DsProfileSettings;->setGeq(I[F)[S

    move-result-object v3

    iget v4, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne v4, p1, :cond_1

    const-string v4, "gebg"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v5, 0x0

    sget-object v6, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v1, v5, v3, v6}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    const-string v4, "Ds"

    const-string/jumbo v5, "setGeq: Invalid Ieq preset input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_4
    const-string v4, "Ds"

    const-string/jumbo v5, "setGeq: Invalid profile input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public setIeqPreset(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_1

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    if-ltz p2, :cond_2

    const/4 v2, 0x4

    if-ge p2, v2, :cond_2

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Landroid/dolby/ds/DsProfileSettings;->setIeqPreset(I)V

    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v2, "Ds"

    const-string/jumbo v3, "setIeqPreset: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setProfileName(ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileNames: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_2

    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/dolby/ds/DsProfileSettings;->setDisplayName(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v1, "Ds"

    const-string/jumbo v2, "setProfileName: Name of this Profile is not settable"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_2
    const-string v1, "Ds"

    const-string/jumbo v2, "setProfileName: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Landroid/os/DeadObjectException;

    invoke-direct {v10}, Landroid/os/DeadObjectException;-><init>()V

    throw v10

    :cond_0
    const/4 v8, 0x0

    const-string v10, "Ds"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setProfileSettings: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_5

    const/4 v10, 0x6

    if-ge p1, v10, :cond_5

    const/4 v2, 0x0

    iget-object v10, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v10, v10, p1

    invoke-virtual {v10, p2}, Landroid/dolby/ds/DsProfileSettings;->updateFromClientSettings(Landroid/dolby/DsClientSettings;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v10, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v10

    sget-object v11, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    new-array v9, v4, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v5, v1}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v10

    aput-short v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v10, "Ds"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with new value/values"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne v10, p1, :cond_1

    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v6

    iget-object v10, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v11, 0x0

    sget-object v12, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v10, v6, v11, v9, v12}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    if-nez v2, :cond_4

    const/4 v8, 0x1

    :cond_4
    return v8

    :cond_5
    const-string v10, "Ds"

    const-string/jumbo v11, "setProfileSettings: Invalid profile input"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
.end method

.method public setSelectedProfile(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x6

    if-ge p1, v2, :cond_2

    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSelectedProfile: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v0

    if-nez v0, :cond_1

    iput p1, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v2, "Ds"

    const-string/jumbo v3, "setSelectedProfile: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setVisualizerOn(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setVisualizerOn(Z)I

    move-result v0

    return v0
.end method

.method public validateDsEffect()Z
    .locals 3

    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->hasControl()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "Ds"

    const-string v2, "Cannot control the DsEffect, trying to recreate..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/dolby/ds/Ds;->recreateDsEffect()Z

    move-result v0

    :cond_0
    return v0
.end method
