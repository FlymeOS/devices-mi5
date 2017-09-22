.class final Lcom/android/settings/dJ;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# instance fields
.field final synthetic oT:Lcom/android/settings/dK;


# direct methods
.method constructor <init>(Lcom/android/settings/dK;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/dJ;->oT:Lcom/android/settings/dK;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/dJ;->oT:Lcom/android/settings/dK;

    invoke-interface {v0}, Lcom/android/settings/dK;->onClick()V

    .line 72
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 78
    return-void
.end method
