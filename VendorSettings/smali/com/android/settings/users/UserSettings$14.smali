.class final Lcom/android/settings/users/UserSettings$14;
.super Lcom/android/settings/search/a;
.source "UserSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    const v5, 0x7f0c094d

    .line 1099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    invoke-static {p1}, Lcom/android/settings/users/UserSettings$UserCapabilities;->cl(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;

    move-result-object v0

    .line 1101
    iget-boolean v2, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1118
    :goto_0
    return-object v0

    .line 1104
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1105
    new-instance v3, Lcom/android/settings/search/n;

    invoke-direct {v3, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 1106
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 1107
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 1108
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->auE:Z

    if-eqz v3, :cond_1

    .line 1111
    new-instance v3, Lcom/android/settings/search/n;

    invoke-direct {v3, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 1112
    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->auF:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c094f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 1115
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/search/n;->apu:Ljava/lang/String;

    .line 1116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    .line 1118
    goto :goto_0

    .line 1112
    :cond_2
    const v0, 0x7f0c0950

    goto :goto_1
.end method
