.class final Lcom/android/settings/notification/OtherSoundSettings$7;
.super Lcom/android/settings/search/a;
.source "OtherSoundSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 261
    const v1, 0x7f08006d

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 262
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->su()[Lcom/android/settings/notification/SettingPref;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 268
    invoke-virtual {v4, p1}, Lcom/android/settings/notification/SettingPref;->bN(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    invoke-virtual {v4}, Lcom/android/settings/notification/SettingPref;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    return-object v1
.end method
