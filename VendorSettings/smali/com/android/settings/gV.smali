.class Lcom/android/settings/gV;
.super Ljava/lang/Object;
.source "ResetLegacyPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yg:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/gV;->yg:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/gV;->yg:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    iget-object v1, p0, Lcom/android/settings/gV;->yg:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    const-class v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 45
    return-void
.end method
