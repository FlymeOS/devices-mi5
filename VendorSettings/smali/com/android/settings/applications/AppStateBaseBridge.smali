.class public abstract Lcom/android/settings/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/android/b/a/s;


# instance fields
.field protected final Gr:Lcom/android/b/a/a;

.field protected final Gs:Lcom/android/b/a/w;

.field protected final Gt:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

.field protected final Gu:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

.field protected final Gv:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gr:Lcom/android/b/a/a;

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gr:Lcom/android/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gr:Lcom/android/b/a/a;

    invoke-virtual {v0, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gs:Lcom/android/b/a/w;

    .line 42
    iput-object p2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gt:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .line 46
    new-instance v0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gr:Lcom/android/b/a/a;

    invoke-virtual {v2}, Lcom/android/b/a/a;->zf()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gu:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    .line 47
    new-instance v0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Lcom/android/settings/applications/AppStateBaseBridge$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gv:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    .line 48
    return-void

    :cond_0
    move-object v0, v1

    .line 41
    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/android/b/a/o;Ljava/lang/String;I)V
.end method

.method public aj(Z)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public h(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gu:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    return-void
.end method

.method public jA()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public jB()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public jC()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public jD()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gu:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 75
    return-void
.end method

.method protected abstract jM()V
.end method

.method public jz()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gu:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->pause()V

    .line 57
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->release()V

    .line 61
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gu:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 52
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->resume()V

    .line 53
    return-void
.end method
