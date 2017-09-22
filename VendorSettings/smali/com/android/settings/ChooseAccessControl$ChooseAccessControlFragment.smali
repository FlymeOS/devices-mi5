.class public Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "ChooseAccessControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected ap()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 28
    return-void
.end method

.method protected aq()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->ep:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    return-void
.end method

.method protected ar()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0c0d6d

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 42
    return-void
.end method
