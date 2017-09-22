.class public Lcom/android/settings/ConfirmSmsLockPattern;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmSmsLockPattern.java"


# instance fields
.field private fT:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 36
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    iput-object p1, p0, Lcom/android/settings/ConfirmSmsLockPattern;->fT:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern;->fT:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->f(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern;->fT:Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->fP:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 55
    return-void
.end method
