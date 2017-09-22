.class Lcom/android/vendorsettings/gf;
.super Ljava/lang/Object;
.source "PrivacyModeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic vP:Lcom/android/vendorsettings/PrivacyModeDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/PrivacyModeDialog;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/vendorsettings/gf;->vP:Lcom/android/vendorsettings/PrivacyModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/vendorsettings/gf;->vP:Lcom/android/vendorsettings/PrivacyModeDialog;

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 41
    return-void
.end method
