.class Lcom/android/updater/d;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/updater/a/b;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/updater/a/b;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->b(Lcom/android/updater/ApplyUpdateFragment;)V

    .line 286
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    const v1, 0x7f0c0fe8

    invoke-virtual {v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v2, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v2, v2, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/updater/ApplyUpdateFragment;->aMK:Landroid/app/ProgressDialog;

    .line 281
    iget-object v0, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0, v4}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;Z)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/updater/d;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0fe7

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
