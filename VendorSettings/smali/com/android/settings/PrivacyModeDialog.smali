.class public Lcom/android/settings/PrivacyModeDialog;
.super Landroid/app/Activity;
.source "PrivacyModeDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PrivacyModeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 34
    const v1, 0x7f0c1002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    const v1, 0x7f0c1003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 36
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/gf;

    invoke-direct {v2, p0}, Lcom/android/settings/gf;-><init>(Lcom/android/settings/PrivacyModeDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/android/settings/gg;

    invoke-virtual {p0}, Lcom/android/settings/PrivacyModeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/gg;-><init>(Lcom/android/settings/PrivacyModeDialog;Landroid/content/Context;Landroid/app/Dialog;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacyModeDialog;->showDialog(I)V

    .line 22
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacyModeDialog;->setVisible(Z)V

    .line 27
    return-void
.end method
