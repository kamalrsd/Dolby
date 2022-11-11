.class public Landroid/dolby/ds/DsAkSettings$SettingDefn;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/ds/DsAkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SettingDefn"
.end annotation


# instance fields
.field public offset:S

.field public parameter:B


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    int-to-short v0, p2

    iput-short v0, p0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-byte v0, v0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    iget-byte v2, p0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    if-ne v0, v2, :cond_1

    check-cast p1, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-short v0, p1, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    iget-short v2, p0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    iget-byte v0, p0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->access$100()[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    add-int/2addr v0, v1

    return v0
.end method
