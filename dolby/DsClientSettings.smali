.class public Landroid/dolby/DsClientSettings;
.super Ljava/lang/Object;
.source "DsClientSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dolby/DsClientSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DsClientSettings"

.field public static final basicProfileParams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDialogEnhancerOn:Z

.field private isGeqOn:Z

.field private isHeadphoneVirtualizerOn:Z

.field private isSpeakerVirtualizerOn:Z

.field private isVolumeLevellerOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "geon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "deon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "dvle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "vdhe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "vspe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "ieon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/dolby/DsClientSettings$1;

    invoke-direct {v0}, Landroid/dolby/DsClientSettings$1;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/dolby/DsClientSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialogEnhancerOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    return v0
.end method

.method public getGeqOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    return v0
.end method

.method public getHeadphoneVirtualizerOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    return v0
.end method

.method public getSpeakerVirtualizerOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return v0
.end method

.method public getVolumeLevellerOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return-void
.end method

.method public setDialogEnhancerOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    return-void
.end method

.method public setGeqOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    return-void
.end method

.method public setHeadphoneVirtualizerOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    return-void
.end method

.method public setSpeakerVirtualizerOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return-void
.end method

.method public setVolumeLevellerOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x5

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
