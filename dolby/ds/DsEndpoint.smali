.class public final enum Landroid/dolby/ds/DsEndpoint;
.super Ljava/lang/Enum;
.source "DsEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/dolby/ds/DsEndpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/dolby/ds/DsEndpoint;

.field public static final enum GENERIC:Landroid/dolby/ds/DsEndpoint;


# instance fields
.field private _device:Landroid/dolby/ds/AudioDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/dolby/ds/DsEndpoint;

    const-string v1, "GENERIC"

    sget-object v2, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-direct {v0, v1, v3, v2}, Landroid/dolby/ds/DsEndpoint;-><init>(Ljava/lang/String;ILandroid/dolby/ds/AudioDevice;)V

    sput-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/dolby/ds/DsEndpoint;

    sget-object v1, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    aput-object v1, v0, v3

    sput-object v0, Landroid/dolby/ds/DsEndpoint;->$VALUES:[Landroid/dolby/ds/DsEndpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/dolby/ds/AudioDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/dolby/ds/AudioDevice;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/dolby/ds/DsEndpoint;->_device:Landroid/dolby/ds/AudioDevice;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/dolby/ds/DsEndpoint;
    .locals 1

    const-class v0, Landroid/dolby/ds/DsEndpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsEndpoint;

    return-object v0
.end method

.method public static values()[Landroid/dolby/ds/DsEndpoint;
    .locals 1

    sget-object v0, Landroid/dolby/ds/DsEndpoint;->$VALUES:[Landroid/dolby/ds/DsEndpoint;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsEndpoint;

    return-object v0
.end method


# virtual methods
.method public toDevice()Landroid/dolby/ds/AudioDevice;
    .locals 1

    iget-object v0, p0, Landroid/dolby/ds/DsEndpoint;->_device:Landroid/dolby/ds/AudioDevice;

    return-object v0
.end method
