.class public abstract Lcom/android/settings/ag;
.super Ljava/lang/Object;
.source "BaseSettingsController.java"


# instance fields
.field protected cw:Landroid/widget/TextView;

.field protected cx:Lcom/android/settings/ah;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/ag;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/settings/ag;->cw:Landroid/widget/TextView;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ag;->cx:Lcom/android/settings/ah;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/ah;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/ag;->cx:Lcom/android/settings/ah;

    .line 37
    return-void
.end method

.method protected abstract af()V
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ag;->cw:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ag;

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ag;->b(Landroid/widget/TextView;)V

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ag;->cw:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/ag;->af()V

    .line 33
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
