.class Lcom/android/vendorsettings/aV;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/vendorsettings/aV;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 541
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 542
    const-string v0, "miui_security_fragment_result"

    iget-object v2, p0, Lcom/android/vendorsettings/aV;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    iget-object v0, p0, Lcom/android/vendorsettings/aV;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    iget-object v2, p0, Lcom/android/vendorsettings/aV;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 544
    return-void
.end method
