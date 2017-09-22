.class Lcom/android/vendorsettings/fm;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sT:Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

.field final synthetic sU:Lcom/android/vendorsettings/fh;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/vendorsettings/fh;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/vendorsettings/fm;->sT:Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/fm;->sU:Lcom/android/vendorsettings/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 480
    .line 481
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/fm;->sT:Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    iget-object v1, p0, Lcom/android/vendorsettings/fm;->sU:Lcom/android/vendorsettings/fh;

    invoke-static {v1}, Lcom/android/vendorsettings/fh;->c(Lcom/android/vendorsettings/fh;)Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fm;->sU:Lcom/android/vendorsettings/fh;

    invoke-static {v1, v2}, Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;->b(Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/vendorsettings/fh;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    .line 483
    const v1, 0x1040013

    new-instance v2, Lcom/android/vendorsettings/fn;

    invoke-direct {v2, p0, p1}, Lcom/android/vendorsettings/fn;-><init>(Lcom/android/vendorsettings/fm;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 491
    const v1, 0x1040009

    new-instance v2, Lcom/android/vendorsettings/fo;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fo;-><init>(Lcom/android/vendorsettings/fm;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 499
    return-void
.end method
