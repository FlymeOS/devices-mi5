.class public final Landroid/provider/MiuiSettings$VirtualSim;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualSim"
.end annotation


# static fields
.field public static final DC_ONLY_VIRTUAL_SIM:I = 0x1

.field public static final MISIM_ID:Ljava/lang/String; = "misim_id"

.field public static final MISIM_IMSI:Ljava/lang/String; = "misim_imsi"

.field public static final NORMAL_VIRTUAL_SIM:I = 0x0

.field public static final STATUS_DISABLING:I = 0x1

.field public static final STATUS_ENABLING:I = 0x0

.field public static final STATUS_NORMAL:I = 0x2

.field public static final VIRTUAL_SIM_ICCID:Ljava/lang/String; = "virtual_sim_iccid"

.field public static final VIRTUAL_SIM_IMSI:Ljava/lang/String; = "virtual_sim_imsi"

.field public static final VIRTUAL_SIM_SLOT_ID:Ljava/lang/String; = "virtual_sim_slot_id"

.field public static final VIRTUAL_SIM_STATUS:Ljava/lang/String; = "virtual_sim_status"

.field public static final VIRTUAL_SIM_TYPE:Ljava/lang/String; = "virtual_sim_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiSimId(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "misim_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVirtualSimIccId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_iccid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualSimImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_imsi"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualSimSlotId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_slot_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVirtualSimStatus(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_status"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVirtualSimType(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMiSimEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "misim_imsi"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4180
    .local v0, "miMobileImsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVirtualSimEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4121
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMiSimId(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miSimId"    # J

    .prologue
    .line 4184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "misim_id"

    invoke-static {v0, v1, p1, p2}, Lmiui/provider/ExtraSettings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4185
    return-void
.end method

.method public static setMiSimImsi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 4175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "misim_imsi"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4176
    return-void
.end method

.method public static setVirtualSimIccId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 4140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_iccid"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4142
    return-void
.end method

.method public static setVirtualSimImsi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 4130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_imsi"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4132
    return-void
.end method

.method public static setVirtualSimSlotId(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 4150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_slot_id"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4152
    return-void
.end method

.method public static setVirtualSimStatus(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 4165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_status"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4167
    return-void
.end method

.method public static setVirtualSimType(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 4155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_sim_type"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4157
    return-void
.end method
