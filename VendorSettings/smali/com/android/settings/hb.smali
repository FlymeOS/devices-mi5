.class final Lcom/android/settings/hb;
.super Lcom/android/settings/search/a;
.source "ScreenPinningSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5

    .prologue
    const v4, 0x7f0c0abd

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 211
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {p1}, Lcom/android/settings/ScreenPinningSettings;->R(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 219
    const v3, 0x7f0c0ac2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 221
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_0
    return-object v0

    .line 224
    :cond_0
    new-instance v2, Lcom/android/settings/search/n;

    invoke-direct {v2, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 225
    const v3, 0x7f0c0abe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
