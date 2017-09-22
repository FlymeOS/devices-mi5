.class Lcom/android/vendorsettings/aO;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/vendorsettings/aO;->fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/vendorsettings/aO;->fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->b(Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/aO;->fw:Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->d(Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    return-void
.end method
