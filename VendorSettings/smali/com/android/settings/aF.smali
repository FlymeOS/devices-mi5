.class Lcom/android/settings/aF;
.super Landroid/text/style/ClickableSpan;
.source "ChooseLockPattern.java"


# instance fields
.field final synthetic eu:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/settings/aF;->eu:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/aF;->eu:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/aF;->eu:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/LockSecureAfterTimeout;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method
