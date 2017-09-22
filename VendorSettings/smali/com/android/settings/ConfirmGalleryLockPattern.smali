.class public Lcom/android/settings/ConfirmGalleryLockPattern;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmGalleryLockPattern.java"


# instance fields
.field private fh:Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 33
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;

    iput-object p1, p0, Lcom/android/settings/ConfirmGalleryLockPattern;->fh:Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern;->fh:Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->f(Landroid/content/Intent;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/ConfirmGalleryLockPattern;->fh:Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->fP:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 47
    return-void
.end method
