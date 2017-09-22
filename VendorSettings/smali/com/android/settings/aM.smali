.class Lcom/android/vendorsettings/aM;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/vendorsettings/aM;->fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/vendorsettings/aM;->fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/aM;->fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-static {v0, v2, v2, v1}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;)V

    .line 203
    return-void
.end method
