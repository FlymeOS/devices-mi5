.class public abstract Lcom/android/settings/dV;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private pT:Landroid/graphics/drawable/Drawable;

.field private pU:Landroid/graphics/drawable/Animatable;

.field private pV:Z

.field private pW:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/settings/dW;

    invoke-direct {v0, p0}, Lcom/android/settings/dW;-><init>(Lcom/android/settings/dV;)V

    iput-object v0, p0, Lcom/android/settings/dV;->pW:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/dV;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dV;->c(Landroid/content/Context;I)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dV;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/dV;->eN()V

    return-void
.end method

.method private c(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/dV;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dV;->pU:Landroid/graphics/drawable/Animatable;

    .line 83
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/dV;->pU:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 85
    return-void
.end method

.method private eM()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/dV;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/dV;->pW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/dV;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/dV;->pW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method private eN()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "MiuiAnimationDrawable"

    const-string v1, "playAnimationImmediately: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dV;->pU:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dV;->pV:Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
.end method

.method public eJ()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected eK()Landroid/graphics/drawable/Animatable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/dV;->pU:Landroid/graphics/drawable/Animatable;

    return-object v0
.end method

.method public eL()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dV;->eN()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dV;->eM()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/settings/dV;->pT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    iget-object v0, p0, Lcom/android/settings/dV;->pU:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 61
    iput-boolean v1, p0, Lcom/android/settings/dV;->pV:Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/dV;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/dV;->pW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
