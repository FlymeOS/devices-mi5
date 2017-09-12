.class public Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$1;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    }
.end annotation


# static fields
.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$1;)V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->broadcastSubscriptionsChanged()V

    return-void
.end method

.method private static broadcastSubscriptionsChanged()V
    .locals 4

    .prologue
    .line 34
    sget-object v3, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 35
    :try_start_0
    sget-object v2, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .line 36
    .local v1, "listener":Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    invoke-interface {v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;->onSubscriptionsChanged()V

    goto :goto_0

    .line 38
    .end local v1    # "listener":Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    return-void
.end method

.method public static getSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 67
    :try_start_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 68
    .local v5, "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v4, v6

    .line 92
    .end local v5    # "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :cond_1
    :goto_0
    return-object v4

    .line 72
    .restart local v5    # "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 73
    new-instance v7, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$1;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 78
    .local v2, "info":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v3, "simInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "simId"

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v7, "slotNum"

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v7, "simName"

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v7, "iccId"

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lmiui/telephony/SubscriptionInfo;
    .end local v3    # "simInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    .line 92
    goto :goto_0
.end method

.method private static registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .locals 1
    .param p0, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .prologue
    .line 58
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 59
    return-void
.end method

.method public static registerSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .prologue
    .line 16
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 17
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V

    .line 21
    :cond_0
    monitor-exit v1

    .line 22
    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .locals 1
    .param p0, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .prologue
    .line 62
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 63
    return-void
.end method

.method public static unRegisterSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .prologue
    .line 25
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 26
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V

    .line 30
    :cond_0
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
