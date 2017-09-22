.class final Lcom/android/vendorsettings/cb;
.super Lcom/android/vendorsettings/search/a;
.source "DevelopmentSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2452
    invoke-direct {p0}, Lcom/android/vendorsettings/search/a;-><init>()V

    return-void
.end method

.method private l(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 2455
    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 2465
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/cb;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2466
    const/4 v0, 0x0

    .line 2471
    :goto_0
    return-object v0

    .line 2469
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2470
    const v1, 0x7f08002a

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2471
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .prologue
    .line 2476
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/cb;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2477
    const/4 v0, 0x0

    .line 2487
    :cond_0
    :goto_0
    return-object v0

    .line 2480
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2481
    # invokes: Lcom/android/vendorsettings/DevelopmentSettings;->bY()Z
    invoke-static {}, Lcom/android/vendorsettings/DevelopmentSettings;->access$500()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2482
    const-string v1, "oem_unlock_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    :cond_2
    invoke-static {}, Lcom/android/vendorsettings/DevelopmentSettings;->dn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2485
    const-string v1, "enable_multi_window"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
