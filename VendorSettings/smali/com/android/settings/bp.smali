.class Lcom/android/vendorsettings/bp;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gL:Lcom/android/vendorsettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vendorsettings/bp;->gL:Lcom/android/vendorsettings/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/bp;->gL:Lcom/android/vendorsettings/CryptKeeperSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/vendorsettings/CryptKeeperSettings;->a(Lcom/android/vendorsettings/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/bp;->gL:Lcom/android/vendorsettings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/vendorsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c021d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c021e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 97
    :cond_0
    return-void
.end method
