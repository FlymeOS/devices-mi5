.class Lcom/android/vendorsettings/et;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic re:Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

.field final synthetic rf:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/vendorsettings/et;->re:Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/et;->rf:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/et;->re:Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/vendorsettings/et;->re:Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

    const v2, 0x7f0c110a

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/vendorsettings/et;->re:Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/et;->rf:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/vendorsettings/et;->re:Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/MiuiFingerprintDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/et;->rf:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 98
    return-void
.end method
