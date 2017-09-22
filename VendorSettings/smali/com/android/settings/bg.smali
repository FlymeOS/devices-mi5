.class Lcom/android/settings/bg;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# instance fields
.field final synthetic gu:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 769
    iget-object v0, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 770
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 771
    new-instance v0, Lcom/android/settings/bj;

    iget-object v1, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bj;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/bb;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/bj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    iget-object v1, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bg;->gu:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->d(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 761
    return-void
.end method
