.class public Lcom/android/server/net/NetworkPolicyManagerServiceInjector;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerServiceInjector.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "NetworkPolicyManagerServiceInjector"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerServiceInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPolicyForNetwork(Landroid/net/NetworkPolicy;)Z
    .locals 2
    .param p0, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateNetworkRules(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "networkRules":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkPolicy;[Ljava/lang/String;>;"
    const/4 v10, 0x7

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "findWifi":Z
    const/4 v1, 0x0

    .line 21
    .local v1, "findWifiWildCard":Z
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 22
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 23
    .local v2, "hasLimit":Z
    :goto_1
    if-nez v2, :cond_1

    iget-boolean v6, v5, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v6, :cond_0

    .line 24
    :cond_1
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 25
    const/4 v1, 0x1

    goto :goto_0

    .line 22
    .end local v2    # "hasLimit":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 26
    .restart local v2    # "hasLimit":Z
    :cond_3
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 27
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    .end local v2    # "hasLimit":Z
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 32
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 33
    .local v4, "newNetworkRules":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkPolicy;[Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 34
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    if-eq v6, v10, :cond_5

    .line 35
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 38
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 39
    invoke-interface {p0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    .end local v4    # "newNetworkRules":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkPolicy;[Ljava/lang/String;>;"
    :cond_7
    return-void
.end method
