.class public abstract Landroid/dolby/IDs$Stub;
.super Landroid/os/Binder;
.source "IDs.java"

# interfaces
.implements Landroid/dolby/IDs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/IDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/IDs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.dolby.IDs"

.field static final TRANSACTION_getBandCount:I = 0x6

.field static final TRANSACTION_getBandFrequencies:I = 0x7

.field static final TRANSACTION_getDsApParam:I = 0x16

.field static final TRANSACTION_getDsApParamLength:I = 0x17

.field static final TRANSACTION_getDsApVersion:I = 0xe

.field static final TRANSACTION_getDsOn:I = 0x2

.field static final TRANSACTION_getDsVersion:I = 0xf

.field static final TRANSACTION_getGeq:I = 0x14

.field static final TRANSACTION_getIeqPreset:I = 0x11

.field static final TRANSACTION_getProfileCount:I = 0x4

.field static final TRANSACTION_getProfileNames:I = 0x5

.field static final TRANSACTION_getProfileSettings:I = 0xb

.field static final TRANSACTION_getSelectedProfile:I = 0x9

.field static final TRANSACTION_isProfileModified:I = 0x12

.field static final TRANSACTION_registerCallback:I = 0x1a

.field static final TRANSACTION_registerDsApParamEvents:I = 0x18

.field static final TRANSACTION_registerVisualizerData:I = 0x1d

.field static final TRANSACTION_resetProfile:I = 0xc

.field static final TRANSACTION_setClientHandle:I = 0x1c

.field static final TRANSACTION_setDsApParam:I = 0x15

.field static final TRANSACTION_setDsOn:I = 0x1

.field static final TRANSACTION_setGeq:I = 0x13

.field static final TRANSACTION_setIeqPreset:I = 0x10

.field static final TRANSACTION_setNonPersistentMode:I = 0x3

.field static final TRANSACTION_setProfileName:I = 0xd

.field static final TRANSACTION_setProfileSettings:I = 0xa

.field static final TRANSACTION_setSelectedProfile:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x1b

.field static final TRANSACTION_unregisterDsApParamEvents:I = 0x19

.field static final TRANSACTION_unregisterVisualizerData:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.dolby.IDs"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/dolby/IDs;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.dolby.IDs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/dolby/IDs;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/dolby/IDs;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/dolby/IDs$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/dolby/IDs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setDsOn(Z)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getDsOn([Z)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Z

    goto :goto_1

    :sswitch_3
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setNonPersistentMode(Z)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getProfileCount([I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :cond_3
    new-array v0, v1, [I

    goto :goto_2

    :sswitch_5
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_4

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getProfileNames([Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_3

    :sswitch_6
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_5

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getBandCount([I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_5
    new-array v0, v1, [I

    goto :goto_4

    :sswitch_7
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getBandFrequencies([I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_6
    new-array v0, v1, [I

    goto :goto_5

    :sswitch_8
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setSelectedProfile(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getSelectedProfile([I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_7
    new-array v0, v1, [I

    goto :goto_6

    :sswitch_a
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/DsClientSettings;

    :goto_7
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setProfileSettings(ILandroid/dolby/DsClientSettings;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :sswitch_b
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_9

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getProfileSettings(I[Landroid/dolby/DsClientSettings;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :cond_9
    new-array v2, v3, [Landroid/dolby/DsClientSettings;

    goto :goto_8

    :sswitch_c
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->resetProfile(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setProfileName(ILjava/lang/String;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getDsApVersion([Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_9

    :sswitch_f
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getDsVersion([Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_a

    :sswitch_10
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setIeqPreset(II)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_c

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getIeqPreset(I[I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_c
    new-array v2, v3, [I

    goto :goto_b

    :sswitch_12
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_d

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->isProfileModified(I[Z)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    :cond_d
    new-array v2, v3, [Z

    goto :goto_c

    :sswitch_13
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Landroid/dolby/IDs$Stub;->setGeq(II[F)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_e

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {p0, v0, v2, v4}, Landroid/dolby/IDs$Stub;->getGeq(II[F)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    :cond_e
    new-array v4, v5, [F

    goto :goto_d

    :sswitch_15
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setDsApParam(Ljava/lang/String;[I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_f

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getDsApParam(Ljava/lang/String;[I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_f
    new-array v2, v3, [I

    goto :goto_e

    :sswitch_17
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_10

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getDsApParamLength(Ljava/lang/String;[I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_10
    new-array v2, v3, [I

    goto :goto_f

    :sswitch_18
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->registerDsApParamEvents(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->unregisterDsApParamEvents(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1a
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/dolby/IDsServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->registerCallback(Landroid/dolby/IDsServiceCallbacks;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/dolby/IDsServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->unregisterCallback(Landroid/dolby/IDsServiceCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setClientHandle(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->registerVisualizerData(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->unregisterVisualizerData(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
