.class Landroid/dolby/DsClient$1;
.super Ljava/lang/Object;
.source "DsClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/DsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/dolby/DsClient;


# direct methods
.method constructor <init>(Landroid/dolby/DsClient;)V
    .locals 0

    iput-object p1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string v3, "DsClient"

    const-string v4, "ServiceConnection.onServiceConnected()"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {p2}, Landroid/dolby/IDs$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDs;

    move-result-object v4

    #setter for: Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;
    invoke-static {v3, v4}, Landroid/dolby/DsClient;->access$002(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;

    :try_start_0
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$000(Landroid/dolby/DsClient;)Landroid/dolby/IDs;

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;
    invoke-static {v4}, Landroid/dolby/DsClient;->access$100(Landroid/dolby/DsClient;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/dolby/IDs;->registerCallback(Landroid/dolby/IDsServiceCallbacks;I)V

    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hash code of the connect is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v2, v3, [I

    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$000(Landroid/dolby/DsClient;)Landroid/dolby/IDs;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/dolby/IDs;->getBandCount([I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "DsClient"

    const-string v4, "Internal error in onServiceConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v3

    invoke-interface {v3}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    :cond_0
    const-string v3, "DsClient"

    const-string v4, "CONNECTED: DSService"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    const/4 v4, 0x0

    aget v4, v2, v4

    #setter for: Landroid/dolby/DsClient;->bandCount_:I
    invoke-static {v3, v4}, Landroid/dolby/DsClient;->access$202(Landroid/dolby/DsClient;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DsClient"

    const-string/jumbo v4, "onServiceConnected failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DsClient"

    const-string v1, "ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v0

    invoke-interface {v0}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    :cond_0
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    const/4 v1, 0x0

    #setter for: Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;
    invoke-static {v0, v1}, Landroid/dolby/DsClient;->access$002(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;

    const-string v0, "DsClient"

    const-string v1, "/ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
