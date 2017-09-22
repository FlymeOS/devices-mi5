.class final Lcom/android/settings/dndmode/g;
.super Landroid/database/ContentObserver;
.source "AlarmContentFragment.java"


# instance fields
.field final synthetic aaj:Lcom/android/settings/dndmode/c;

.field private final aak:Landroid/net/Uri;

.field private final aal:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/dndmode/c;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/dndmode/g;->aaj:Lcom/android/settings/dndmode/c;

    .line 135
    invoke-static {p1}, Lcom/android/settings/dndmode/c;->b(Lcom/android/settings/dndmode/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 131
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/g;->aak:Landroid/net/Uri;

    .line 132
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/g;->aal:Landroid/net/Uri;

    .line 136
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/dndmode/g;->aal:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/dndmode/g;->aaj:Lcom/android/settings/dndmode/c;

    invoke-static {v0}, Lcom/android/settings/dndmode/c;->f(Lcom/android/settings/dndmode/c;)V

    .line 153
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/settings/dndmode/g;->aaj:Lcom/android/settings/dndmode/c;

    invoke-static {v0}, Lcom/android/settings/dndmode/c;->c(Lcom/android/settings/dndmode/c;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/g;->aak:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/dndmode/g;->aaj:Lcom/android/settings/dndmode/c;

    invoke-static {v0}, Lcom/android/settings/dndmode/c;->d(Lcom/android/settings/dndmode/c;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/g;->aal:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/dndmode/g;->aaj:Lcom/android/settings/dndmode/c;

    invoke-static {v0}, Lcom/android/settings/dndmode/c;->e(Lcom/android/settings/dndmode/c;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    return-void
.end method
