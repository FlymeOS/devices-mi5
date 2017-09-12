.class public Lmiui/telephony/VirtualSimUtils;
.super Ljava/lang/Object;
.source "VirtualSimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;
    }
.end annotation


# static fields
.field public static final KEY_CARRIER_NAME:Ljava/lang/String; = "carrierName"

.field public static final KEY_SETTINGS_ENTRANCE:Ljava/lang/String; = "setting_entrance"

.field public static final METHOD_GET_CARRIER_NAME:Ljava/lang/String; = "getCarrierName"

.field public static final METHOD_GET_SETTINGS_ENTRANCE_INTENT:Ljava/lang/String; = "getSettingsEntranceIntent"

.field private static final TAG:Ljava/lang/String; = "VirtualSimUtils"

.field public static final VIRTUAL_SIM_CONTENT:Ljava/lang/String; = "content://com.miui.virtualsim.provider.virtualsimInfo"

.field private static sInstance:Lmiui/telephony/VirtualSimUtils;


# instance fields
.field private mIsVirtualSimEnabled:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualSimStatus:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;

    .line 38
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z

    .line 39
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I

    .line 40
    const-string v1, "VirtualSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init mIsVirtualSimEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVirtualSimStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lmiui/telephony/VirtualSimUtils$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/telephony/VirtualSimUtils$1;-><init>(Lmiui/telephony/VirtualSimUtils;Landroid/os/Handler;)V

    .line 59
    .local v0, "virtualSimObserver":Landroid/database/ContentObserver;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "virtual_sim_imsi"

    invoke-static {v2}, Lmiui/provider/ExtraSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "virtual_sim_status"

    invoke-static {v2}, Lmiui/provider/ExtraSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/VirtualSimUtils;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/VirtualSimUtils;

    .prologue
    .line 18
    iget-boolean v0, p0, Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lmiui/telephony/VirtualSimUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/VirtualSimUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/telephony/VirtualSimUtils;)I
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/VirtualSimUtils;

    .prologue
    .line 18
    iget v0, p0, Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I

    return v0
.end method

.method static synthetic access$102(Lmiui/telephony/VirtualSimUtils;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/VirtualSimUtils;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I

    return p1
.end method

.method static synthetic access$200(Lmiui/telephony/VirtualSimUtils;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/VirtualSimUtils;

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lmiui/telephony/VirtualSimUtils;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lmiui/telephony/VirtualSimUtils;->sInstance:Lmiui/telephony/VirtualSimUtils;

    return-object v0
.end method

.method public static getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "b":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.virtualsim.provider.virtualsimInfo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getCarrierName"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-object v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VirtualSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVirtualSimCarrierName e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "carrierName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getVirtualSimIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "b":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.virtualsim.provider.virtualsimInfo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getSettingsEntranceIntent"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-object v2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VirtualSimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVirtualSimIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "setting_entrance"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_1
.end method

.method public static getVirtualSimSlot(Landroid/content/Context;ZI)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkSimType"    # Z
    .param p2, "virtualSimType"    # I

    .prologue
    .line 86
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimType(Landroid/content/Context;)I

    move-result v3

    if-eq p2, v3, :cond_1

    .line 88
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimIccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    :cond_2
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v2

    .line 95
    .local v2, "virtualSlot":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 96
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    .end local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v2    # "virtualSlot":I
    :cond_4
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0
.end method

.method static init()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lmiui/telephony/VirtualSimUtils;->sInstance:Lmiui/telephony/VirtualSimUtils;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lmiui/telephony/VirtualSimUtils;

    invoke-direct {v0}, Lmiui/telephony/VirtualSimUtils;-><init>()V

    sput-object v0, Lmiui/telephony/VirtualSimUtils;->sInstance:Lmiui/telephony/VirtualSimUtils;

    .line 69
    :cond_0
    return-void
.end method

.method public static isDcOnlyVirtualSim(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiSimEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isMiSimEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1, v0}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlot(Landroid/content/Context;ZI)I

    move-result v2

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isValidApnForMiSim(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0, p1}, Lmiui/telephony/VirtualSimUtils;->isMiSimEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "miSimImsi":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "3gnet"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    .end local v0    # "miSimImsi":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isVirtualSim(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 81
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addVirtualSimChangedListener(Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;

    .prologue
    .line 143
    iget-object v1, p0, Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVirtualSimSlotId()I
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0
.end method

.method public isDisablingVirtualSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 166
    iget v1, p0, Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnablingVirtualSim()Z
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVirtualSimEnabled()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z

    return v0
.end method

.method public removeVirtualSimChangedListener(Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;

    .prologue
    .line 149
    iget-object v1, p0, Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
