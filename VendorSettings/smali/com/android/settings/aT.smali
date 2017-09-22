.class Lcom/android/vendorsettings/aT;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/vendorsettings/dN;


# instance fields
.field final synthetic fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/vendorsettings/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_challenge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 382
    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/vendorsettings/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/aT;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method
