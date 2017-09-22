.class Lcom/android/settings/ei;
.super Ljava/lang/Object;
.source "MiuiCryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ql:Lcom/android/settings/MiuiCryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/ei;->ql:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ei;->ql:Lcom/android/settings/MiuiCryptKeeperSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/MiuiCryptKeeperSettings;->a(Lcom/android/settings/MiuiCryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/ei;->ql:Lcom/android/settings/MiuiCryptKeeperSettings;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/ei;->ql:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-virtual {v2}, Lcom/android/settings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c021d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c021e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiCryptKeeperSettings;->a(Lcom/android/settings/MiuiCryptKeeperSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 125
    iget-object v0, p0, Lcom/android/settings/ei;->ql:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiCryptKeeperSettings;->c(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 127
    :cond_0
    return-void
.end method
