.class final Landroid/dolby/DsClientSettings$1;
.super Ljava/lang/Object;
.source "DsClientSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/DsClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/dolby/DsClientSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/dolby/DsClientSettings;
    .locals 1

    new-instance v0, Landroid/dolby/DsClientSettings;

    invoke-direct {v0, p1}, Landroid/dolby/DsClientSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/dolby/DsClientSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/dolby/DsClientSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/dolby/DsClientSettings;
    .locals 1

    new-array v0, p1, [Landroid/dolby/DsClientSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/dolby/DsClientSettings$1;->newArray(I)[Landroid/dolby/DsClientSettings;

    move-result-object v0

    return-object v0
.end method
