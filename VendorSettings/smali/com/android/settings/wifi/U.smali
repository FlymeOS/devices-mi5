.class final Lcom/android/settings/wifi/U;
.super Lcom/android/settings/search/a;
.source "SavedAccessPointsWifiSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 205
    const v3, 0x7f0c033e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    new-instance v1, Lcom/android/settings/search/n;

    invoke-direct {v1, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 209
    iput-object v3, v1, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 210
    iput-object v3, v1, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 211
    iput-boolean p2, v1, Lcom/android/settings/search/n;->enabled:Z

    .line 212
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {p1, v4, v0, v4}, Lcom/android/b/e/c;->a(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v4

    .line 218
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    .line 219
    :goto_0
    if-ge v1, v5, :cond_0

    .line 220
    new-instance v6, Lcom/android/settings/search/n;

    invoke-direct {v6, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 222
    iput-object v3, v6, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 223
    iput-boolean p2, v6, Lcom/android/settings/search/n;->enabled:Z

    .line 224
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_0
    return-object v2
.end method
