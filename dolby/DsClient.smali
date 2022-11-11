.class public Landroid/dolby/DsClient;
.super Ljava/lang/Object;
.source "DsClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsClient"

.field private static lock_:Ljava/lang/Object;


# instance fields
.field private activityListener_:Landroid/dolby/IDsClientEvents;

.field private bandCount_:I

.field private callbacks_:Landroid/dolby/IDsServiceCallbacks;

.field private connection_:Landroid/content/ServiceConnection;

.field private dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

.field private ds_:Landroid/dolby/IDs;

.field private excitations_:[F

.field private gains_:[F

.field private handler_:Landroid/os/Handler;

.field private visualizerListener_:Landroid/dolby/IDsVisualizerEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iput-object v1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    const/4 v0, 0x0

    iput v0, p0, Landroid/dolby/DsClient;->bandCount_:I

    iput-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    iput-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    new-instance v0, Landroid/dolby/DsClient$1;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$1;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/dolby/DsClient$2;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$2;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    new-instance v0, Landroid/dolby/DsClient$3;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$3;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/dolby/DsClient;)Landroid/dolby/IDs;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    return-object v0
.end method

.method static synthetic access$002(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;
    .locals 0

    iput-object p1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    return-object p1
.end method

.method static synthetic access$100(Landroid/dolby/DsClient;)Landroid/dolby/IDsServiceCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Landroid/dolby/DsClient;)I
    .locals 1

    iget v0, p0, Landroid/dolby/DsClient;->bandCount_:I

    return v0
.end method

.method static synthetic access$202(Landroid/dolby/DsClient;I)I
    .locals 0

    iput p1, p0, Landroid/dolby/DsClient;->bandCount_:I

    return p1
.end method

.method static synthetic access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/dolby/DsClient;)[F
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->gains_:[F

    return-object v0
.end method

.method static synthetic access$600(Landroid/dolby/DsClient;)[F
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->excitations_:[F

    return-object v0
.end method

.method static synthetic access$700(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    return-object v0
.end method

.method static synthetic access$800(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    return-object v0
.end method

.method public static getGeqBandGainLowerBound()F
    .locals 2

    sget-object v0, Landroid/dolby/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getGeqBandGainUpperBound()F
    .locals 2

    sget-object v0, Landroid/dolby/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private translateErrorCodeToExceptions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindDsService(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "DsClient"

    const-string v2, "bindDsService()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/dolby/IDs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public getBandCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getBandCount([I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getBandCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getBandCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getBandCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getBandCount"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getBandFrequencies()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getBandCount()I

    move-result v3

    new-array v0, v3, [I

    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v3, v0}, Landroid/dolby/IDs;->getBandFrequencies([I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "DsClient"

    const-string v4, "RemoteException in getBandFrequencies"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_1
    move-exception v1

    const-string v3, "DsClient"

    const-string v4, "NullPointerException in getBandFrequencies"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    throw v1

    :catch_2
    move-exception v1

    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in getBandFrequencies"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception in getBandFrequencies"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->getDsApParamLength(Ljava/lang/String;[I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    aget v4, v2, v4

    new-array v3, v4, [I

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v3}, Landroid/dolby/IDs;->getDsApParam(Ljava/lang/String;[I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsApParam"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsApParam"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsApParam"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsApParam"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v3, ""

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getDsApVersion([Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    aget-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsApVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsApVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsApVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsApVersion"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDsOn()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Z

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getDsOn([Z)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x0

    aget-boolean v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsOn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsOn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsOn"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v3, ""

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getDsVersion([Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    aget-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsVersion"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getGeq(II)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x5

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid profile"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-ltz p2, :cond_2

    const/4 v3, 0x3

    if-le p2, v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid preset"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getBandCount()I

    move-result v3

    new-array v2, v3, [F

    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v3, p1, p2, v2}, Landroid/dolby/IDs;->getGeq(II[F)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "DsClient"

    const-string v4, "RemoteException in getGeq"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v3, "DsClient"

    const-string v4, "NullPointerException in getGeq"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in getGeq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception in getGeq"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getIeqPreset(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->getIeqPreset(I[I)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getIeqPreset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getIeqPreset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getIeqPreset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getIeqPreset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProfileCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getProfileCount([I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getProfileCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getProfileCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getProfileCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getProfileCount"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getProfileCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v3, v2}, Landroid/dolby/IDs;->getProfileNames([Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "DsClient"

    const-string v4, "RemoteException in getProfileNames"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v3, "DsClient"

    const-string v4, "NullPointerException in getProfileNames"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in getProfileNames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception in getProfileNames"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Landroid/dolby/DsClientSettings;

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->getProfileSettings(I[Landroid/dolby/DsClientSettings;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getProfileSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getProfileSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getProfileSetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getProfileSettings"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSelectedProfile()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getSelectedProfile([I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in getSelectedProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getSelectedProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getSelectedProfile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getSelectedProfile"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isProfileModified(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Z

    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->isProfileModified(I[Z)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/4 v4, 0x0

    aget-boolean v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "RemoteException in isProfileModified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "DsClient"

    const-string v5, "NullPointerException isProfileModified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in isProfileModified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in isProfileModified"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public registerDsApParamEvents(Landroid/dolby/IDsApParamEvents;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->registerDsApParamEvents(I)V

    iput-object p1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "RemoteException in registerDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "NullPointerException in registerDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in registerDsApParamEvents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in registerDsApParamEvents"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "registerDsApParamEvents failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerVisualizer(Landroid/dolby/IDsVisualizerEvents;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_3

    :try_start_0
    iget v1, p0, Landroid/dolby/DsClient;->bandCount_:I

    if-nez v1, :cond_0

    const-string v1, "DsClient"

    const-string v2, "graphic equalizer band count NOT initialized yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in registerVisualizer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "RemoteException in registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    if-nez v1, :cond_1

    iget v1, p0, Landroid/dolby/DsClient;->bandCount_:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    :cond_1
    iget-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    if-nez v1, :cond_2

    iget v1, p0, Landroid/dolby/DsClient;->bandCount_:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    :cond_2
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->registerVisualizerData(I)V

    iput-object p1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_1
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "NullPointerException in registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in registerVisualizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in registerVisualizer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "registerVisualizer failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetProfile(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v3, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->resetProfile(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "RemoteException in resetProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "NullPointerException in resetProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in resetProfile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in resetProfile"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDsApParam(Ljava/lang/String;[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v3, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setDsApParam(Ljava/lang/String;[I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "RemoteException in setDsApParam"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "NullPointerException in setDsApParam"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setDsApParam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in setDsApParam"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDsOn(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setDsOn(Z)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    monitor-exit v3

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v4, "RemoteException in setDsOn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setDsOn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setDsOn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setDsOn"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setEventListener(Landroid/dolby/IDsClientEvents;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    :cond_0
    return-void
.end method

.method public setGeq(II[F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid preset"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v3, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2, p3}, Landroid/dolby/IDs;->setGeq(II[F)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :try_start_1
    monitor-exit p0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "RemoteException in setGeq"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v3, "NullPointerException in setGeq"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setGeq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in setGeq"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setIeqPreset(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid preset"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v3, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setIeqPreset(II)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :try_start_1
    monitor-exit p0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "RemoteException in setIeqPreset"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v3, "NullPointerException in setIeqPreset"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setIeqPreset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in setIeqPreset"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setNonPersistentMode(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setNonPersistentMode(Z)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    monitor-exit v3

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v4, "RemoteException in setNonPersistentMode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setNonPersistentMode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setNonPersistentMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setNonPersistentMode"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setProfileName(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v3, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setProfileName(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :try_start_1
    monitor-exit p0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v3, "RemoteException in setProfileName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v3, "NullPointerException in setProfileName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setProfileName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in setProfileName"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid settings"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_4

    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setProfileSettings(ILandroid/dolby/DsClientSettings;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :try_start_1
    monitor-exit v3

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v4, "RemoteException in setProfileSettings"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setProfileSettings"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setProfileSettings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setProfileSettings"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setSelectedProfile(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_3

    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setSelectedProfile(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :try_start_1
    monitor-exit v3

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DsClient"

    const-string v4, "RemoteException in setSelectedProfile"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setSelectedProfile"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setSelectedProfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setSelectedProfile"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public unBindDsService(Landroid/content/Context;)V
    .locals 3

    const-string v1, "DsClient"

    const-string/jumbo v2, "unBindDsService()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterVisualizerData(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterDsApParamEvents(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterCallback(Landroid/dolby/IDsServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "Remote Exception in unBindFromRemoteRunningService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDsApParamEvents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterDsApParamEvents(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "RemoteException in unregisterDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "NullPointerException in unregisterDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unregisterDsApParamEvents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in unregisterDsApParamEvents"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unregisterDsApParamEvents failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterVisualizer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterVisualizerData(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "RemoteException in unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DsClient"

    const-string v2, "NullPointerException in unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unregisterVisualizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in unregisterVisualizer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unregisterVisualizer failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
