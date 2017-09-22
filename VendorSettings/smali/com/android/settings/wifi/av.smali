.class final Lcom/android/vendorsettings/wifi/av;
.super Lcom/android/vendorsettings/search/a;
.source "WifiSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/android/vendorsettings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f0c02cf

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1011
    new-instance v0, Lcom/android/vendorsettings/search/n;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 1012
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 1013
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 1014
    const v3, 0x7f0c0a19

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/vendorsettings/search/n;->apt:Ljava/lang/String;

    .line 1015
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    const/4 v0, 0x1

    invoke-static {p1, v0, v4, v4}, Lcom/android/b/e/c;->a(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 1020
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 1021
    new-instance v4, Lcom/android/vendorsettings/search/n;

    invoke-direct {v4, p1}, Lcom/android/vendorsettings/search/n;-><init>(Landroid/content/Context;)V

    .line 1022
    invoke-virtual {v0}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    .line 1023
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/search/n;->apu:Ljava/lang/String;

    .line 1024
    iput-boolean p2, v4, Lcom/android/vendorsettings/search/n;->enabled:Z

    .line 1025
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1028
    :cond_0
    return-object v1
.end method
