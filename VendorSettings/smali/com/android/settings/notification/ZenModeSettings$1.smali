.class final Lcom/android/settings/notification/ZenModeSettings$1;
.super Lcom/android/settings/search/a;
.source "ZenModeSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7

    .prologue
    .line 120
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->bT(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 125
    new-instance v6, Lcom/android/settings/search/n;

    invoke-direct {v6, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 128
    const v0, 0x7f0c0a4b

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 129
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    return-object v4
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->bU(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "automation_settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-object v0
.end method
