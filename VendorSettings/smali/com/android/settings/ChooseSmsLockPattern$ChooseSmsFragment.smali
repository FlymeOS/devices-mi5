.class public Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "ChooseSmsLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected ap()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 30
    return-void
.end method

.method protected aq()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 40
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->ep:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPatternAsUser(Ljava/util/List;I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivateSmsEnabledAsUser(ZI)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 45
    return-void
.end method

.method protected ar()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0c0f2a

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 36
    return-void
.end method
