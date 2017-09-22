.class Lcom/android/vendorsettings/vpn2/AppDialog;
.super Landroid/app/AlertDialog;
.source "AppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final Fj:Landroid/content/pm/PackageInfo;

.field private final avd:Lcom/android/vendorsettings/vpn2/AppDialog$Listener;

.field private final mLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/vendorsettings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/vendorsettings/vpn2/AppDialog;->avd:Lcom/android/vendorsettings/vpn2/AppDialog$Listener;

    .line 51
    iput-object p3, p0, Lcom/android/vendorsettings/vpn2/AppDialog;->Fj:Landroid/content/pm/PackageInfo;

    .line 52
    iput-object p4, p0, Lcom/android/vendorsettings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialog;->avd:Lcom/android/vendorsettings/vpn2/AppDialog$Listener;

    invoke-interface {v0, p1}, Lcom/android/vendorsettings/vpn2/AppDialog$Listener;->b(Landroid/content/DialogInterface;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialog;->dismiss()V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/AppDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c092a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/AppDialog;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/AppDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialog;->vC()V

    .line 65
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected vC()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/AppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    const/4 v1, -0x2

    const v2, 0x7f0c0926

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/vendorsettings/vpn2/AppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    const/4 v1, -0x1

    const v2, 0x7f0c0922

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/vendorsettings/vpn2/AppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 78
    return-void
.end method
